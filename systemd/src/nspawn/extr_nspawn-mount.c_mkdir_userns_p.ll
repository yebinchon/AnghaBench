; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_mkdir_userns_p.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_mkdir_userns_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @mkdir_userns_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkdir_userns_p(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @path_startswith(i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOTDIR, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %96

28:                                               ; preds = %20, %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strspn(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %90, %87, %28
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %13, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcspn(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strspn(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i32 2, i32* %15, align 4
  br label %87

56:                                               ; preds = %34
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %40, i8* %57, i32 %63)
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i8, i8* %40, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @path_startswith(i8* %74, i8* %40)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 3, i32* %15, align 4
  br label %87

78:                                               ; preds = %73, %56
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @mkdir_userns(i8* %40, i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %87

86:                                               ; preds = %78
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %86, %84, %77, %55
  %88 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %15, align 4
  switch i32 %89, label %98 [
    i32 0, label %90
    i32 2, label %91
    i32 3, label %34
    i32 1, label %96
  ]

90:                                               ; preds = %87
  br label %34

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @mkdir_userns(i8* %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %91, %87, %25
  %97 = load i32, i32* %5, align 4
  ret i32 %97

98:                                               ; preds = %87
  unreachable
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @path_startswith(i8*, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mkdir_userns(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
