; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_lua_ExtensionDeactivate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_lua_ExtensionDeactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@EXT_META_LISTENER = common dso_local global i32 0, align 4
@vlc_InputItemMetaChanged = common dso_local global i32 0, align 4
@inputItemMetaChanged = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"deactivate\00", align 1
@LUA_END = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lua_ExtensionDeactivate(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %92

24:                                               ; preds = %12
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = call i32 @vlclua_fd_interrupt(i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXT_META_LISTENER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* @vlc_InputItemMetaChanged, align 4
  %53 = load i32, i32* @inputItemMetaChanged, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @vlc_event_detach(i32* %51, i32 %52, i32 %53, %struct.TYPE_8__* %54)
  br label %56

56:                                               ; preds = %45, %36
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = call i32 @input_item_Release(%struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %66, align 8
  br label %67

67:                                               ; preds = %56, %24
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load i32, i32* @LUA_END, align 4
  %71 = call i32 @lua_ExecuteFunction(i32* %68, %struct.TYPE_8__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %3, align 4
  br label %92

80:                                               ; preds = %67
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @lua_close(i32* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %78, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlclua_fd_interrupt(i32*) #1

declare dso_local i32 @vlc_event_detach(i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @input_item_Release(%struct.TYPE_9__*) #1

declare dso_local i32 @lua_ExecuteFunction(i32*, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
