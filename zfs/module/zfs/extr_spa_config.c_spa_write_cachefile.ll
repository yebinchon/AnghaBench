; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_write_cachefile.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_config.c_spa_write_cachefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i32* }
%struct.TYPE_18__ = type { i32* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@rootdir = common dso_local global i32* null, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_IMPORT_TEMP_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@FM_EREPORT_ZFS_CONFIG_CACHE_WRITE = common dso_local global i32 0, align 4
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@spa_config_generation = common dso_local global i32 0, align 4
@ESC_ZFS_CONFIG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_write_cachefile(%struct.TYPE_17__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32*, i32** @rootdir, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @spa_mode_global, align 4
  %20 = load i32, i32* @FWRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %3
  br label %192

24:                                               ; preds = %18
  %25 = load i64, i64* @B_FALSE, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = call %struct.TYPE_18__* @list_head(i32* %27)
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %7, align 8
  br label %29

29:                                               ; preds = %129, %24
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %134

32:                                               ; preds = %29
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %13, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %129

38:                                               ; preds = %32
  store i32* null, i32** %9, align 8
  br label %39

39:                                               ; preds = %108, %83, %54, %38
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %41 = call %struct.TYPE_17__* @spa_next(%struct.TYPE_17__* %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %13, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %118

43:                                               ; preds = %39
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = icmp eq %struct.TYPE_17__* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %52 = call i32 @spa_writeable(%struct.TYPE_17__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %47
  br label %39

55:                                               ; preds = %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 3
  %58 = call i32 @mutex_enter(i32* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = call %struct.TYPE_18__* @list_head(i32* %60)
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %8, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %55
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = icmp eq %struct.TYPE_18__* %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @strcmp(i32* %77, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74, %69, %66, %55
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = call i32 @mutex_exit(i32* %85)
  br label %39

87:                                               ; preds = %74
  %88 = load i32*, i32** %9, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32* (...) @fnvlist_alloc()
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ZFS_IMPORT_TEMP_NAME, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %104 = call i8* @fnvlist_lookup_string(i32* %102, i32 %103)
  store i8* %104, i8** %10, align 8
  br label %108

105:                                              ; preds = %92
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %107 = call i8* @spa_name(%struct.TYPE_17__* %106)
  store i8* %107, i8** %10, align 8
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32*, i32** %9, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @fnvlist_add_nvlist(i32* %109, i8* %110, i32* %113)
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = call i32 @mutex_exit(i32* %116)
  br label %39

118:                                              ; preds = %39
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @spa_config_write(%struct.TYPE_18__* %119, i32* %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i64, i64* @B_TRUE, align 8
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %124, %118
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @nvlist_free(i32* %127)
  br label %129

129:                                              ; preds = %126, %37
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = call %struct.TYPE_18__* @list_next(i32* %131, %struct.TYPE_18__* %132)
  store %struct.TYPE_18__* %133, %struct.TYPE_18__** %7, align 8
  br label %29

134:                                              ; preds = %29
  %135 = load i64, i64* %11, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @FM_EREPORT_ZFS_CONFIG_CACHE_WRITE, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = call i32 @zfs_ereport_post(i32 %143, %struct.TYPE_17__* %144, i32* null, i32* null, i32* null, i32 0, i32 0)
  br label %146

146:                                              ; preds = %142, %137
  %147 = call i64 (...) @gethrtime()
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %152 = call i32 @spa_async_request(%struct.TYPE_17__* %150, i32 %151)
  br label %156

153:                                              ; preds = %134
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %146
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = call %struct.TYPE_18__* @list_head(i32* %158)
  store %struct.TYPE_18__* %159, %struct.TYPE_18__** %7, align 8
  br label %160

160:                                              ; preds = %180, %156
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = call %struct.TYPE_18__* @list_next(i32* %162, %struct.TYPE_18__* %163)
  store %struct.TYPE_18__* %164, %struct.TYPE_18__** %8, align 8
  %165 = icmp ne %struct.TYPE_18__* %164, null
  br i1 %165, label %166, label %183

166:                                              ; preds = %160
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %170 = call i32 @list_remove(i32* %168, %struct.TYPE_18__* %169)
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @spa_strfree(i32* %178)
  br label %180

180:                                              ; preds = %175, %166
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = call i32 @kmem_free(%struct.TYPE_18__* %181, i32 8)
  br label %160

183:                                              ; preds = %160
  %184 = load i32, i32* @spa_config_generation, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* @spa_config_generation, align 4
  %186 = load i64, i64* %6, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %190 = load i32, i32* @ESC_ZFS_CONFIG_SYNC, align 4
  %191 = call i32 @spa_event_notify(%struct.TYPE_17__* %189, i32* null, i32* null, i32 %190)
  br label %192

192:                                              ; preds = %23, %188, %183
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_18__* @list_head(i32*) #1

declare dso_local %struct.TYPE_17__* @spa_next(%struct.TYPE_17__*) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_17__*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @spa_config_write(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local %struct.TYPE_18__* @list_next(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @zfs_ereport_post(i32, %struct.TYPE_17__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @spa_strfree(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_17__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
