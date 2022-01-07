; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_stream_to_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_storages.c_stream_to_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Storage is too large\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @stream_to_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_to_storage(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @STATFLAG_NONAME, align 4
  %15 = call i32 @IStream_Stat(i32* %13, %struct.TYPE_5__* %7, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %97

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @E_FAIL, align 4
  store i32 %29, i32* %3, align 4
  br label %97

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @msi_alloc(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %30
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @IStream_Read(i32* %41, i32 %42, i32 %43, i32* %11)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %40
  br label %87

53:                                               ; preds = %48
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @CreateILockBytesOnHGlobal(i32* null, i32 %54, i32** %6)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %87

60:                                               ; preds = %53
  %61 = call i32 @ZeroMemory(i32* %12, i32 4)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @ILockBytes_WriteAt(i32* %62, i32 %63, i32 %64, i32 %65, i32* %11)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %60
  br label %87

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @STGM_READWRITE, align 4
  %78 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %79 = or i32 %77, %78
  %80 = load i32**, i32*** %5, align 8
  %81 = call i32 @StgOpenStorageOnILockBytes(i32* %76, i32* null, i32 %79, i32* null, i32 0, i32** %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %85, %74, %59, %52
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @msi_free(i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @ILockBytes_Release(i32* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %38, %27, %19
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @IStream_Stat(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @msi_alloc(i32) #1

declare dso_local i32 @IStream_Read(i32*, i32, i32, i32*) #1

declare dso_local i32 @CreateILockBytesOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @ILockBytes_WriteAt(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @StgOpenStorageOnILockBytes(i32*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i32 @msi_free(i32) #1

declare dso_local i32 @ILockBytes_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
