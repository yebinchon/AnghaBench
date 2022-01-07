; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_GetType.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_core.c_config_GetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_VAR_FLOAT = common dso_local global i32 0, align 4
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@VLC_VAR_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_GetType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.TYPE_3__* @config_FindConfig(i8* %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CONFIG_CLASS(i32 %13)
  switch i32 %14, label %23 [
    i32 130, label %15
    i32 129, label %17
    i32 131, label %19
    i32 128, label %21
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* @VLC_VAR_FLOAT, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %10
  %18 = load i32, i32* @VLC_VAR_INTEGER, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* @VLC_VAR_BOOL, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @VLC_VAR_STRING, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_3__* @config_FindConfig(i8*) #1

declare dso_local i32 @CONFIG_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
