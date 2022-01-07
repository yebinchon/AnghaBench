; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_main.c_detect_raspi.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_main.c_detect_raspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"/sys/firmware/devicetree/base/model\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Raspberry Pi\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/proc/modules\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vc4\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [139 x i8] c"\1B[1;31mWarning: You have a Raspberry Pi, but the vc4 Module is not loaded! Set 'dtoverlay=vc4-kms-v3d'in /boot/config.txt and reboot.\1B[0m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_raspi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %55

11:                                               ; preds = %0
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @getline(i8** %3, i64* %4, i32* %13)
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strstr(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %22

21:                                               ; preds = %16
  br label %12

22:                                               ; preds = %20, %12
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @free(i8* %29)
  br label %55

31:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @getline(i8** %3, i64* %4, i32* %33)
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  br label %42

41:                                               ; preds = %36
  br label %32

42:                                               ; preds = %40, %32
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @fclose(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %10, %28, %52, %49, %42
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
