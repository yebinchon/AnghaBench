; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_libvlc_InternalActionsInit.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_actions.c_libvlc_InternalActionsInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i8**, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }

@ACTIONS_COUNT = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"key-pressed\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"global-key-pressed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"key-action\00", align 1
@s_names2actions = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"key-%s and key-%s are not ordered properly\00", align 1
@MAXACTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"global-key-%s\00", align 1
@KEY_MOUSEWHEELRIGHT = common dso_local global i32 0, align 4
@KEY_MOUSEWHEELLEFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"hotkeys-x-wheel-mode\00", align 1
@KEY_MOUSEWHEELUP = common dso_local global i32 0, align 4
@KEY_MOUSEWHEELDOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"hotkeys-y-wheel-mode\00", align 1
@vlc_key_to_action = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_InternalActionsInit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @VLC_OBJECT(i32* %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* @ACTIONS_COUNT, align 4
  %16 = add nsw i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = add i64 24, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_5__* @malloc(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %162

29:                                               ; preds = %1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %36 = call i32 @var_Create(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %39 = call i32 @var_Create(i32* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %42 = call i32 @var_Create(i32* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %123, %29
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @ACTIONS_COUNT, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %126

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcmp(i8* %57, i8* %62)
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %51
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @msg_Err(i32* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %77)
  %79 = call i32 (...) @abort() #4
  unreachable

80:                                               ; preds = %51, %48
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* %85, i8** %90, align 8
  %91 = load i32, i32* @MAXACTION, align 4
  %92 = add nsw i32 12, %91
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %7, align 8
  %95 = alloca i8, i64 %93, align 16
  store i64 %93, i64* %8, align 8
  %96 = trunc i64 %93 to i32
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @snprintf(i8* %95, i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = getelementptr inbounds i8, i8* %95, i64 7
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @init_action(i32* %103, i32** %105, i8* %106, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_names2actions, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @init_action(i32* %113, i32** %115, i8* %95, i32 %120)
  %122 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %122)
  br label %123

123:                                              ; preds = %80
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %6, align 8
  br label %43

126:                                              ; preds = %43
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* @ACTIONS_COUNT, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  store i8* null, i8** %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i32, i32* @KEY_MOUSEWHEELRIGHT, align 4
  %136 = load i32, i32* @KEY_MOUSEWHEELLEFT, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @var_InheritInteger(i32* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %139 = call i32 @add_wheel_mapping(i32** %134, i32 %135, i32 %136, i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i32, i32* @KEY_MOUSEWHEELUP, align 4
  %143 = load i32, i32* @KEY_MOUSEWHEELDOWN, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @var_InheritInteger(i32* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %146 = call i32 @add_wheel_mapping(i32** %141, i32 %142, i32 %143, i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = call %struct.TYPE_7__* @libvlc_priv(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %150, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* @vlc_key_to_action, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = call i32 @var_AddCallback(i32* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %152, i32** %154)
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* @vlc_key_to_action, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = call i32 @var_AddCallback(i32* %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32** %159)
  %161 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %126, %27
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @VLC_OBJECT(i32*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @init_action(i32*, i32**, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @add_wheel_mapping(i32**, i32, i32, i32) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local %struct.TYPE_7__* @libvlc_priv(i32*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
