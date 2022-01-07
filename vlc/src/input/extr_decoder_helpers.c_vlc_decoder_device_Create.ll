; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_vlc_decoder_device_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder_helpers.c_vlc_decoder_device_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.vlc_decoder_device_priv = type { %struct.TYPE_6__, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dec-dev\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"decoder device\00", align 1
@decoder_device_Open = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @vlc_decoder_device_Create(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vlc_decoder_device_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.vlc_decoder_device_priv* @vlc_object_create(i32* %7, i32 16)
  store %struct.vlc_decoder_device_priv* %8, %struct.vlc_decoder_device_priv** %4, align 8
  %9 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %10 = icmp ne %struct.vlc_decoder_device_priv* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %44

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @var_InheritString(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %16 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %15, i32 0, i32 0
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @decoder_device_Open, align 4
  %19 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %20 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @vlc_module_load(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 1, i32 %18, %struct.TYPE_6__* %20, i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %29 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %28, i32 0, i32 0
  %30 = call i32 @vlc_object_delete(%struct.TYPE_6__* %29)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %44

31:                                               ; preds = %12
  %32 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %33 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %40 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %39, i32 0, i32 1
  %41 = call i32 @vlc_atomic_rc_init(i32* %40)
  %42 = load %struct.vlc_decoder_device_priv*, %struct.vlc_decoder_device_priv** %4, align 8
  %43 = getelementptr inbounds %struct.vlc_decoder_device_priv, %struct.vlc_decoder_device_priv* %42, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %2, align 8
  br label %44

44:                                               ; preds = %31, %27, %11
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %45
}

declare dso_local %struct.vlc_decoder_device_priv* @vlc_object_create(i32*, i32) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32* @vlc_module_load(%struct.TYPE_6__*, i8*, i8*, i32, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_atomic_rc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
