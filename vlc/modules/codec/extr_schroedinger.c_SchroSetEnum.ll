; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_SchroSetEnum.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_schroedinger.c_SchroSetEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Invalid %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8**, i8*, i8*, i8*)* @SchroSetEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SchroSetEnum(%struct.TYPE_5__* %0, i32 %1, i8** %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %14, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %6
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i8**, i8*** %10, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %52

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @schro_encoder_setting_set_double(i32 %48, i8* %49, i32 %50)
  store i32 1, i32* %7, align 4
  br label %61

52:                                               ; preds = %44
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @msg_Err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %55, %27, %24, %21, %6
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @schro_encoder_setting_set_double(i32, i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
