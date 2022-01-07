; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_holds_iter.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_iter.c_zcp_holds_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unexpected error %d from dsl_dataset_hold_obj(dsobj)\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"unexpected error %d from zap_cursor_retrieve()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_holds_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_holds_iter(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_upvalueindex(i32 1)
  %13 = call i32 @lua_tonumber(i32* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_upvalueindex(i32 2)
  %16 = call i32 @lua_tonumber(i32* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call %struct.TYPE_15__* @zcp_run_info(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @dsl_dataset_hold_obj(i32* %21, i32 %22, i32 %23, %struct.TYPE_14__** %7)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

29:                                               ; preds = %1
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %38)
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %95

47:                                               ; preds = %37
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %55)
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @zap_cursor_init_serialized(i32* %9, i32 %54, i64 %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %61, i32 %62)
  %64 = call i32 @zap_cursor_retrieve(i32* %9, %struct.TYPE_13__* %8)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %47
  %68 = call i32 @zap_cursor_fini(i32* %9)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @luaL_error(i32* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %2, align 4
  br label %95

76:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %95

77:                                               ; preds = %47
  %78 = call i32 @zap_cursor_advance(i32* %9)
  %79 = call i32 @zap_cursor_serialize(i32* %9)
  store i32 %79, i32* %5, align 4
  %80 = call i32 @zap_cursor_fini(i32* %9)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @lua_pushnumber(i32* %81, i32 %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @lua_upvalueindex(i32 2)
  %86 = call i32 @lua_replace(i32* %84, i32 %85)
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @lua_pushstring(i32* %87, i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @lua_pushnumber(i32* %91, i32 %93)
  store i32 2, i32* %2, align 4
  br label %95

95:                                               ; preds = %77, %76, %72, %43, %32, %28
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local %struct.TYPE_15__* @zcp_run_info(i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32, i64, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_serialize(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
