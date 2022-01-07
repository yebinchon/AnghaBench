; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_tox_file_chunk_request.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_tox_test.c_tox_file_chunk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sendf_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Didn't get resume control\00", align 1
@sending_pos = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad position %llu\00", align 1
@file_sending_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"File sending already done.\00", align 1
@max_sending = common dso_local global i64 0, align 8
@m_send_reached = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Requested done file tranfer.\00", align 1
@sending_num = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Could not send chunk %i\00", align 1
@TOX_ERR_FILE_SEND_CHUNK_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Wrong error code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tox_file_chunk_request(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 974536
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %88

21:                                               ; preds = %6
  %22 = load i32, i32* @sendf_ok, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* @sending_pos, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %88

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @file_sending_done, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  store i32 1, i32* @file_sending_done, align 4
  br label %88

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* @max_sending, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @m_send_reached, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i64, i64* @max_sending, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %11, align 8
  store i32 1, i32* @m_send_reached, align 4
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i64, i64* %11, align 8
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %14, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %15, align 8
  %61 = load i32, i32* @sending_num, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @memset(i32* %60, i32 %61, i64 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @tox_file_send_chunk(i32* %64, i32 %65, i32 %66, i64 %67, i32* %60, i64 %68, i64* %13)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load i32, i32* @sending_num, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @sending_num, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @sending_pos, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* @sending_pos, align 8
  br label %80

77:                                               ; preds = %57
  %78 = load i64, i64* %13, align 8
  %79 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @TOX_ERR_FILE_SEND_CHUNK_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 (i8*, ...) @ck_abort_msg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %88

88:                                               ; preds = %86, %41, %30, %20
  ret void
}

declare dso_local i32 @ck_abort_msg(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @tox_file_send_chunk(i32*, i32, i32, i64, i32*, i64, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
