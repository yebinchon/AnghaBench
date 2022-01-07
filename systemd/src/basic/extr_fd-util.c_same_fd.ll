; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_same_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_fd-util.c_same_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64, i64 }

@KCMP_FILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @same_fd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = call i32 (...) @getpid_cached()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @KCMP_FILE, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @kcmp(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %121

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %121

39:                                               ; preds = %35
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @ENOSYS, align 4
  %42 = load i32, i32* @EACCES, align 4
  %43 = load i32, i32* @EPERM, align 4
  %44 = call i32 @IN_SET(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @errno, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @fstat(i32 %50, %struct.stat* %6)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @errno, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %121

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @fstat(i32 %57, %struct.stat* %7)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @errno, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %121

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @S_IFMT, align 4
  %67 = and i32 %65, %66
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @S_IFMT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %121

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @S_ISCHR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @S_ISBLK(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  store i32 0, i32* %3, align 4
  br label %121

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %85
  store i32 0, i32* %3, align 4
  br label %121

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @F_GETFL, align 4
  %101 = call i32 @fcntl(i32 %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @errno, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %121

107:                                              ; preds = %98
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @F_GETFL, align 4
  %110 = call i32 @fcntl(i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @errno, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %113, %104, %97, %84, %73, %60, %53, %46, %38, %34, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @kcmp(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @fcntl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
