; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_bookmarks_iter.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_bookmarks_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unexpected error %d from dsl_dataset_hold_obj(dsobj)\00", align 1
@DS_FIELD_BOOKMARK_NAMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected error %d from zap_lookup()\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"unexpected error %d from zap_cursor_retrieve()\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"unexpected error %d from snprintf()\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_bookmarks_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_bookmarks_iter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %20 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_upvalueindex(i32 1)
  %25 = call i32 @lua_tonumber(i32* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_upvalueindex(i32 2)
  %28 = call i32 @lua_tonumber(i32* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_18__* @zcp_run_info(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_16__* %33, i32 %34, i32 %35, %struct.TYPE_17__** %10)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

41:                                               ; preds = %1
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @luaL_error(i32* %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %51 = call i32 @dsl_dataset_is_zapified(%struct.TYPE_17__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = load i32, i32* @FTAG, align 4
  %56 = call i32 @dsl_dataset_rele(%struct.TYPE_17__* %54, i32 %55)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

57:                                               ; preds = %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DS_FIELD_BOOKMARK_NAMES, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = call i32 @zap_lookup(i32 %60, i32 %63, i32 %64, i32 8, i32 1, i64* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %57
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = load i32, i32* @FTAG, align 4
  %77 = call i32 @dsl_dataset_rele(%struct.TYPE_17__* %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @luaL_error(i32* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

81:                                               ; preds = %70, %57
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dsl_dataset_rele(%struct.TYPE_17__* %87, i32 %88)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

90:                                               ; preds = %81
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = call i32 @dsl_dataset_name(%struct.TYPE_17__* %91, i8* %19)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @zap_cursor_init_serialized(i32* %12, i32 %99, i64 %102, i32 %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = load i32, i32* @FTAG, align 4
  %107 = call i32 @dsl_dataset_rele(%struct.TYPE_17__* %105, i32 %106)
  %108 = call i32 @zap_cursor_retrieve(i32* %12, %struct.TYPE_15__* %11)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %90
  %112 = call i32 @zap_cursor_fini(i32* %12)
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @luaL_error(i32* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

120:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

121:                                              ; preds = %90
  %122 = call i32 @zap_cursor_advance(i32* %12)
  %123 = call i32 @zap_cursor_serialize(i32* %12)
  store i32 %123, i32* %8, align 4
  %124 = call i32 @zap_cursor_fini(i32* %12)
  %125 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @snprintf(i8* %22, i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %19, i8* %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* @ENAMETOOLONG, align 4
  %135 = call i32 @luaL_error(i32* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  store i32 %135, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

136:                                              ; preds = %121
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @lua_pushnumber(i32* %137, i32 %138)
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @lua_upvalueindex(i32 2)
  %142 = call i32 @lua_replace(i32* %140, i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @lua_pushstring(i32* %143, i8* %22)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %145

145:                                              ; preds = %136, %132, %120, %116, %86, %74, %53, %44, %40
  %146 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_tonumber(i32*, i32) #2

declare dso_local i32 @lua_upvalueindex(i32) #2

declare dso_local %struct.TYPE_18__* @zcp_run_info(i32*) #2

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_16__*, i32, i32, %struct.TYPE_17__**) #2

declare dso_local i32 @luaL_error(i32*, i8*, i32) #2

declare dso_local i32 @dsl_dataset_is_zapified(%struct.TYPE_17__*) #2

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i64*) #2

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32, i64, i32) #2

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @zap_cursor_fini(i32*) #2

declare dso_local i32 @zap_cursor_advance(i32*) #2

declare dso_local i32 @zap_cursor_serialize(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

declare dso_local i32 @lua_replace(i32*, i32) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
