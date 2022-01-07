; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_Open_Extension.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_extension.c_Open_Extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Opening Lua Extension module\00", align 1
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't load extensions modules\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dialog-event\00", align 1
@VLC_VAR_ADDRESS = common dso_local global i32 0, align 4
@vlclua_extension_dialog_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Open_Extension(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @lua_Disabled(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %9, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @msg_Dbg(i32* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load i32, i32* @Control, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_init(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = call i64 @ScanExtensions(%struct.TYPE_4__* %23)
  %25 = load i64, i64* @VLC_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %10
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = call i32 @msg_Err(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %10
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %34 = call i32 @var_Create(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @vlclua_extension_dialog_callback, align 4
  %37 = call i32 @var_AddCallback(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32* null)
  %38 = load i64, i64* @VLC_SUCCESS, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %27, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @lua_Disabled(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @ScanExtensions(%struct.TYPE_4__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
