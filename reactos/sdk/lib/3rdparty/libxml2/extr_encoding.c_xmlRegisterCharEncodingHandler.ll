; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlRegisterCharEncodingHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlRegisterCharEncodingHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handlers = common dso_local global i32** null, align 8
@XML_I18N_NO_HANDLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"xmlRegisterCharEncodingHandler: NULL handler !\0A\00", align 1
@nbCharEncodingHandler = common dso_local global i64 0, align 8
@MAX_ENCODING_HANDLERS = common dso_local global i64 0, align 8
@XML_I18N_EXCESS_HANDLER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"xmlRegisterCharEncodingHandler: Too many handler registered, see %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"MAX_ENCODING_HANDLERS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegisterCharEncodingHandler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32**, i32*** @handlers, align 8
  %4 = icmp eq i32** %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @xmlInitCharEncodingHandlers()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32**, i32*** @handlers, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @XML_I18N_NO_HANDLER, align 4
  %15 = call i32 @xmlEncodingErr(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* null)
  br label %29

16:                                               ; preds = %10
  %17 = load i64, i64* @nbCharEncodingHandler, align 8
  %18 = load i64, i64* @MAX_ENCODING_HANDLERS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @XML_I18N_EXCESS_HANDLER, align 4
  %22 = call i32 @xmlEncodingErr(i32 %21, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %29

23:                                               ; preds = %16
  %24 = load i32*, i32** %2, align 8
  %25 = load i32**, i32*** @handlers, align 8
  %26 = load i64, i64* @nbCharEncodingHandler, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @nbCharEncodingHandler, align 8
  %28 = getelementptr inbounds i32*, i32** %25, i64 %26
  store i32* %24, i32** %28, align 8
  br label %29

29:                                               ; preds = %23, %20, %13
  ret void
}

declare dso_local i32 @xmlInitCharEncodingHandlers(...) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
