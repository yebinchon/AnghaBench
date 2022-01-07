; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_GetDiscDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_GetDiscDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i8* }

@GetDiscDevice.devs = internal constant [3 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i64 7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i64 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [8 x i8] c"cdda://\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cd-audio\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dvd://\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vcd://\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vcd\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @GetDiscDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GetDiscDevice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @GetDiscDevice.devs, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @GetDiscDevice.devs, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @strncmp(i8* %17, i8* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %11
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @GetDiscDevice.devs, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @config_GetPsz(i8* %45)
  store i8* %46, i8** %2, align 8
  br label %68

47:                                               ; preds = %33
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** %2, align 8
  br label %68

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %7

56:                                               ; preds = %7
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @strdup(i8* %57)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = call i64 @strcspn(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i8*, i8** %4, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %66, %47, %40
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @config_GetPsz(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
