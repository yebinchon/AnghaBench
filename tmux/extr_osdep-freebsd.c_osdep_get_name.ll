; ModuleID = '/home/carl/AnghaBench/tmux/extr_osdep-freebsd.c_osdep_get_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_osdep-freebsd.c_osdep_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.kinfo_proc = type { i64, i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PGRP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @osdep_get_name(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.stat, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kinfo_proc*, align 8
  %10 = alloca %struct.kinfo_proc*, align 8
  %11 = alloca %struct.kinfo_proc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %15 = load i32, i32* @CTL_KERN, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @KERN_PROC, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @KERN_PROC_PGRP, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %20, align 4
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %9, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @stat(i8* %21, %struct.stat* %7)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %110

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @tcgetpgrp(i32 %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = icmp eq i32 %27, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %110

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %60, %31
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %35 = call i32 @nitems(i32* %34)
  %36 = call i32 @sysctl(i32* %33, i32 %35, %struct.kinfo_proc* null, i64* %8, i32* null, i32 0)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %110

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = mul i64 %40, 5
  %42 = udiv i64 %41, 4
  store i64 %42, i64* %8, align 8
  %43 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call %struct.kinfo_proc* @realloc(%struct.kinfo_proc* %43, i64 %44)
  store %struct.kinfo_proc* %45, %struct.kinfo_proc** %10, align 8
  %46 = icmp eq %struct.kinfo_proc* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %107

48:                                               ; preds = %39
  %49 = load %struct.kinfo_proc*, %struct.kinfo_proc** %10, align 8
  store %struct.kinfo_proc* %49, %struct.kinfo_proc** %9, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %52 = call i32 @nitems(i32* %51)
  %53 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %54 = call i32 @sysctl(i32* %50, i32 %52, %struct.kinfo_proc* %53, i64* %8, i32* null, i32 0)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENOMEM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %32

61:                                               ; preds = %56
  br label %107

62:                                               ; preds = %48
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %11, align 8
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %92, %62
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = udiv i64 %65, 16
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %69, i64 %70
  %72 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %92

78:                                               ; preds = %68
  %79 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %80 = icmp eq %struct.kinfo_proc* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %82, i64 %83
  store %struct.kinfo_proc* %84, %struct.kinfo_proc** %11, align 8
  br label %91

85:                                               ; preds = %78
  %86 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %86, i64 %87
  %89 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %90 = call %struct.kinfo_proc* @cmp_procs(%struct.kinfo_proc* %88, %struct.kinfo_proc* %89)
  store %struct.kinfo_proc* %90, %struct.kinfo_proc** %11, align 8
  br label %91

91:                                               ; preds = %85, %81
  br label %92

92:                                               ; preds = %91, %77
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %63

95:                                               ; preds = %63
  store i8* null, i8** %13, align 8
  %96 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %97 = icmp ne %struct.kinfo_proc* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %100 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @strdup(i32 %101)
  store i8* %102, i8** %13, align 8
  br label %103

103:                                              ; preds = %98, %95
  %104 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %105 = call i32 @free(%struct.kinfo_proc* %104)
  %106 = load i8*, i8** %13, align 8
  store i8* %106, i8** %3, align 8
  br label %110

107:                                              ; preds = %61, %47
  %108 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %109 = call i32 @free(%struct.kinfo_proc* %108)
  store i8* null, i8** %3, align 8
  br label %110

110:                                              ; preds = %107, %103, %38, %30, %24
  %111 = load i8*, i8** %3, align 8
  ret i8* %111
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @tcgetpgrp(i32) #1

declare dso_local i32 @sysctl(i32*, i32, %struct.kinfo_proc*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local %struct.kinfo_proc* @realloc(%struct.kinfo_proc*, i64) #1

declare dso_local %struct.kinfo_proc* @cmp_procs(%struct.kinfo_proc*, %struct.kinfo_proc*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @free(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
