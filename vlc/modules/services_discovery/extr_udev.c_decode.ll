; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_udev.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strdup(i8* %12)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i8* [ %13, %11 ], [ null, %14 ]
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %73

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %67, %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @hex(i8 signext %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @hex(i8 signext %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %53, %54
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %6, align 8
  br label %66

60:                                               ; preds = %45, %39, %33, %27
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %5, align 8
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %60, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %23

70:                                               ; preds = %23
  %71 = load i8*, i8** %5, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %70, %19
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @hex(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
