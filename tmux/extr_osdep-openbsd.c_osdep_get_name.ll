; ModuleID = '/home/carl/AnghaBench/tmux/extr_osdep-openbsd.c_osdep_get_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_osdep-openbsd.c_osdep_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.kinfo_proc = type { i32, i64 }

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
  %6 = alloca [6 x i32], align 16
  %7 = alloca %struct.stat, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kinfo_proc*, align 8
  %10 = alloca %struct.kinfo_proc*, align 8
  %11 = alloca %struct.kinfo_proc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
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
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 16, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @stat(i8* %23, %struct.stat* %7)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %116

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tcgetpgrp(i32 %28)
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %29, i32* %30, align 4
  %31 = icmp eq i32 %29, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %116

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %66, %33
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %37 = call i32 @nitems(i32* %36)
  %38 = call i32 @sysctl(i32* %35, i32 %37, %struct.kinfo_proc* null, i64* %8, i32* null, i32 0)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %113

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = mul i64 %42, 5
  %44 = udiv i64 %43, 4
  store i64 %44, i64* %8, align 8
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call %struct.kinfo_proc* @realloc(%struct.kinfo_proc* %45, i64 %46)
  store %struct.kinfo_proc* %47, %struct.kinfo_proc** %10, align 8
  %48 = icmp eq %struct.kinfo_proc* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %113

50:                                               ; preds = %41
  %51 = load %struct.kinfo_proc*, %struct.kinfo_proc** %10, align 8
  store %struct.kinfo_proc* %51, %struct.kinfo_proc** %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = udiv i64 %52, 16
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %58 = call i32 @nitems(i32* %57)
  %59 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %60 = call i32 @sysctl(i32* %56, i32 %58, %struct.kinfo_proc* %59, i64* %8, i32* null, i32 0)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load i64, i64* @errno, align 8
  %64 = load i64, i64* @ENOMEM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %34

67:                                               ; preds = %62
  br label %113

68:                                               ; preds = %50
  store %struct.kinfo_proc* null, %struct.kinfo_proc** %11, align 8
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %98, %68
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %8, align 8
  %72 = udiv i64 %71, 16
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %75, i64 %76
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %98

84:                                               ; preds = %74
  %85 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %86 = icmp eq %struct.kinfo_proc* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %88, i64 %89
  store %struct.kinfo_proc* %90, %struct.kinfo_proc** %11, align 8
  br label %97

91:                                               ; preds = %84
  %92 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %92, i64 %93
  %95 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %96 = call %struct.kinfo_proc* @cmp_procs(%struct.kinfo_proc* %94, %struct.kinfo_proc* %95)
  store %struct.kinfo_proc* %96, %struct.kinfo_proc** %11, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i64, i64* %12, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %12, align 8
  br label %69

101:                                              ; preds = %69
  store i8* null, i8** %13, align 8
  %102 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %103 = icmp ne %struct.kinfo_proc* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %106 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @strdup(i32 %107)
  store i8* %108, i8** %13, align 8
  br label %109

109:                                              ; preds = %104, %101
  %110 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %111 = call i32 @free(%struct.kinfo_proc* %110)
  %112 = load i8*, i8** %13, align 8
  store i8* %112, i8** %3, align 8
  br label %116

113:                                              ; preds = %67, %49, %40
  %114 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %115 = call i32 @free(%struct.kinfo_proc* %114)
  store i8* null, i8** %3, align 8
  br label %116

116:                                              ; preds = %113, %109, %32, %26
  %117 = load i8*, i8** %3, align 8
  ret i8* %117
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
