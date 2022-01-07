; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_expand_command.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_expand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@expand_command.expand_dirW = internal constant [13 x i8] c"%EXTRACT_DIR%", align 1
@.str = private unnamed_addr constant [17 x i8] c"Can't expand %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*, i64*)* @expand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_command(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %85, %4
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @strchrW(i8* %16, i8 signext 37)
  store i8* %17, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = call i32 @memcpy(i8* %25, i8* %26, i64 %31)
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @expand_command.expand_dirW, i64 0, i64 0))
  %43 = call i32 @strncmpiW(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @expand_command.expand_dirW, i64 0, i64 0), i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %33
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlenW(i8* %48)
  store i64 %49, i64* %12, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 %59, 1
  %61 = call i32 @memcpy(i8* %55, i8* %58, i64 %60)
  br label %62

62:                                               ; preds = %52, %45
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @expand_command.expand_dirW, i64 0, i64 0))
  %67 = load i8*, i8** %9, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %9, align 8
  br label %85

70:                                               ; preds = %33
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @debugstr_w(i8* %71)
  %73 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 37, i8* %79, align 1
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %80, %62
  %86 = load i8*, i8** %9, align 8
  store i8* %86, i8** %10, align 8
  br label %15

87:                                               ; preds = %15
  %88 = load i8*, i8** %7, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @strcpyW(i8* %93, i8* %94)
  br label %96

96:                                               ; preds = %90, %87
  %97 = load i64, i64* %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i64 @strlenW(i8* %98)
  %100 = add i64 %97, %99
  %101 = add i64 %100, 1
  %102 = load i64*, i64** %8, align 8
  store i64 %101, i64* %102, align 8
  ret void
}

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strncmpiW(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
