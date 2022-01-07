; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_clean-ipc.c_clean_ipc_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_clean-ipc.c_clean_ipc_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UID_INVALID = common dso_local global i64 0, align 8
@GID_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clean_ipc_internal(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %128

16:                                               ; preds = %12
  %17 = load i64, i64* @UID_INVALID, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %128

25:                                               ; preds = %21
  %26 = load i64, i64* @GID_INVALID, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @uid_is_valid(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @gid_is_valid(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %128

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @clean_sysvipc_shm(i64 %37, i64 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %128

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @clean_sysvipc_sem(i64 %55, i64 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %128

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @clean_sysvipc_msg(i64 %73, i64 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %128

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %84
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @clean_posix_shm(i64 %91, i64 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %128

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %102
  br label %108

108:                                              ; preds = %107, %90
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @clean_posix_mq(i64 %109, i64 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %128

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %123, %120
  br label %126

126:                                              ; preds = %125, %108
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %118, %100, %82, %64, %46, %35, %24, %15
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @uid_is_valid(i64) #1

declare dso_local i32 @gid_is_valid(i64) #1

declare dso_local i32 @clean_sysvipc_shm(i64, i64, i32) #1

declare dso_local i32 @clean_sysvipc_sem(i64, i64, i32) #1

declare dso_local i32 @clean_sysvipc_msg(i64, i64, i32) #1

declare dso_local i32 @clean_posix_shm(i64, i64, i32) #1

declare dso_local i32 @clean_posix_mq(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
