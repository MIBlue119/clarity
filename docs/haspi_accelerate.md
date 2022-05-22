

### Issue: 
Current haspi process spend a long time.
An audio file need almost 6 seconds to process. 
When we try to evaluate 2500 files with haspi, it may cost half day.


### Possible methods

1. Convert `numpy` / `scipy.signal ` to `cupy` / `cusignal` 

    - `cupy`    
        - https://cupy.dev/

    - `cusugnal`
      - https://github.com/rapidsai/cusignal


- Some operations like cheby2,butter,group_delay,lfilter are not supported yet at cusignal.
- `cu.insert` isnot implemented.
- Issue: the adapted version is stucked. 