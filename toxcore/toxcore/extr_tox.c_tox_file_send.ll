; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_file_send.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_tox.c_tox_file_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_ERR_FILE_SEND_NULL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@FILE_ID_LENGTH = common dso_local global i32 0, align 4
@TOX_ERR_FILE_SEND_OK = common dso_local global i32 0, align 4
@TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND = common dso_local global i32 0, align 4
@TOX_ERR_FILE_SEND_NAME_TOO_LONG = common dso_local global i32 0, align 4
@TOX_ERR_FILE_SEND_TOO_MANY = common dso_local global i32 0, align 4
@TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tox_file_send(i32* %0, i64 %1, i64 %2, i32 %3, i32* %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i64, i64* %16, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %17, align 8
  %30 = load i32, i32* @TOX_ERR_FILE_SEND_NULL, align 4
  %31 = call i32 @SET_ERROR_PARAMETER(i32* %29, i32 %30)
  %32 = load i64, i64* @UINT32_MAX, align 8
  store i64 %32, i64* %9, align 8
  br label %85

33:                                               ; preds = %25, %8
  %34 = load i32, i32* @FILE_ID_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %18, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %19, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = call i32 @new_symmetric_key(i32* %37)
  store i32* %37, i32** %14, align 8
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i32*, i32** %10, align 8
  store i32* %43, i32** %20, align 8
  %44 = load i32*, i32** %20, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = call i64 @new_filesender(i32* %44, i64 %45, i64 %46, i32 %47, i32* %48, i32* %49, i64 %50)
  store i64 %51, i64* %21, align 8
  %52 = load i64, i64* %21, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load i32*, i32** %17, align 8
  %56 = load i32, i32* @TOX_ERR_FILE_SEND_OK, align 4
  %57 = call i32 @SET_ERROR_PARAMETER(i32* %55, i32 %56)
  %58 = load i64, i64* %21, align 8
  store i64 %58, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

59:                                               ; preds = %42
  %60 = load i64, i64* %21, align 8
  switch i64 %60, label %81 [
    i64 -1, label %61
    i64 -2, label %66
    i64 -3, label %71
    i64 -4, label %76
  ]

61:                                               ; preds = %59
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* @TOX_ERR_FILE_SEND_FRIEND_NOT_FOUND, align 4
  %64 = call i32 @SET_ERROR_PARAMETER(i32* %62, i32 %63)
  %65 = load i64, i64* @UINT32_MAX, align 8
  store i64 %65, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

66:                                               ; preds = %59
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* @TOX_ERR_FILE_SEND_NAME_TOO_LONG, align 4
  %69 = call i32 @SET_ERROR_PARAMETER(i32* %67, i32 %68)
  %70 = load i64, i64* @UINT32_MAX, align 8
  store i64 %70, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

71:                                               ; preds = %59
  %72 = load i32*, i32** %17, align 8
  %73 = load i32, i32* @TOX_ERR_FILE_SEND_TOO_MANY, align 4
  %74 = call i32 @SET_ERROR_PARAMETER(i32* %72, i32 %73)
  %75 = load i64, i64* @UINT32_MAX, align 8
  store i64 %75, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

76:                                               ; preds = %59
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* @TOX_ERR_FILE_SEND_FRIEND_NOT_CONNECTED, align 4
  %79 = call i32 @SET_ERROR_PARAMETER(i32* %77, i32 %78)
  %80 = load i64, i64* @UINT32_MAX, align 8
  store i64 %80, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

81:                                               ; preds = %59
  %82 = load i64, i64* @UINT32_MAX, align 8
  store i64 %82, i64* %9, align 8
  store i32 1, i32* %22, align 4
  br label %83

83:                                               ; preds = %81, %76, %71, %66, %61, %54
  %84 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %84)
  br label %85

85:                                               ; preds = %83, %28
  %86 = load i64, i64* %9, align 8
  ret i64 %86
}

declare dso_local i32 @SET_ERROR_PARAMETER(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @new_symmetric_key(i32*) #1

declare dso_local i64 @new_filesender(i32*, i64, i64, i32, i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
