; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_misc.c_Ext2LinuxError.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/extr_misc.c_Ext2LinuxError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ETOOSMALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Ext2LinuxError(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %71 [
    i32 179, label %5
    i32 178, label %8
    i32 174, label %11
    i32 157, label %14
    i32 150, label %17
    i32 149, label %17
    i32 162, label %20
    i32 161, label %20
    i32 147, label %23
    i32 146, label %23
    i32 145, label %23
    i32 144, label %23
    i32 152, label %23
    i32 158, label %23
    i32 129, label %23
    i32 176, label %26
    i32 151, label %26
    i32 139, label %26
    i32 153, label %29
    i32 130, label %29
    i32 169, label %29
    i32 137, label %32
    i32 155, label %32
    i32 168, label %32
    i32 166, label %32
    i32 140, label %32
    i32 163, label %35
    i32 143, label %38
    i32 148, label %38
    i32 170, label %38
    i32 138, label %38
    i32 131, label %38
    i32 128, label %38
    i32 171, label %38
    i32 132, label %38
    i32 135, label %38
    i32 159, label %41
    i32 141, label %44
    i32 133, label %47
    i32 156, label %47
    i32 154, label %47
    i32 136, label %50
    i32 167, label %50
    i32 164, label %53
    i32 172, label %56
    i32 142, label %56
    i32 165, label %59
    i32 173, label %62
    i32 134, label %62
    i32 175, label %65
    i32 160, label %65
    i32 177, label %68
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EACCES, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %2, align 4
  br label %79

8:                                                ; preds = %1
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %79

11:                                               ; preds = %1
  %12 = load i32, i32* @ETOOSMALL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %79

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %1, %1
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %79

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %24 = load i32, i32* @ENETDOWN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %1, %1, %1
  %27 = load i32, i32* @ENETUNREACH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %1, %1, %1
  %30 = load i32, i32* @ECONNABORTED, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %79

32:                                               ; preds = %1, %1, %1, %1, %1
  %33 = load i32, i32* @ECONNRESET, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %79

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %39 = load i32, i32* @ENOBUFS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %1
  %42 = load i32, i32* @ENOTCONN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %79

44:                                               ; preds = %1
  %45 = load i32, i32* @ESHUTDOWN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %1, %1, %1
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %1, %1
  %51 = load i32, i32* @ECONNREFUSED, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %1
  %54 = load i32, i32* @EHOSTUNREACH, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %79

56:                                               ; preds = %1, %1
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %79

59:                                               ; preds = %1
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %79

62:                                               ; preds = %1, %1
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %79

65:                                               ; preds = %1, %1
  %66 = load i32, i32* @EMSGSIZE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %79

68:                                               ; preds = %1
  %69 = load i32, i32* @EADDRINUSE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %79

71:                                               ; preds = %1
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %75, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
