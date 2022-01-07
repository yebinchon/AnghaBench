; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_verify_request.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_verify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64* }

@verify_request = common dso_local global i32 0, align 4
@HTTP_REQUEST = common dso_local global i32 0, align 4
@HPE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"incomplete request\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s at %d:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @script_verify_request(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %16 = load i32, i32* @verify_request, align 4
  store i32 %16, i32* %15, align 4
  store i8* null, i8** %5, align 8
  store i64 0, i64* %7, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @script_request(i32* %17, i8** %5, i64* %6)
  %19 = load i32, i32* @HTTP_REQUEST, align 4
  %20 = call i32 @http_parser_init(%struct.TYPE_8__* %4, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i64* %7, i64** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @http_parser_execute(%struct.TYPE_8__* %4, %struct.TYPE_7__* %3, i8* %22, i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %28, %1
  %32 = call i32 @HTTP_PARSER_ERRNO(%struct.TYPE_8__* %4)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @http_errno_description(i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @HPE_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %10, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %40 ]
  store i8* %42, i8** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %14, align 8
  br label %44

44:                                               ; preds = %61, %41
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = icmp ult i8* %45, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  store i32 1, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %14, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %14, align 8
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %67, i32 %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %28
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i32 @script_request(i32*, i8**, i64*) #1

declare dso_local i32 @http_parser_init(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @http_parser_execute(%struct.TYPE_8__*, %struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @HTTP_PARSER_ERRNO(%struct.TYPE_8__*) #1

declare dso_local i8* @http_errno_description(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
