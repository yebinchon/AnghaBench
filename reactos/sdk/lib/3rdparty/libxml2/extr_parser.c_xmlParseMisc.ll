; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseMisc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseMisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@CUR_PTR = common dso_local global i32 0, align 4
@CUR = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseMisc(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %3

3:                                                ; preds = %50, %1
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XML_PARSER_EOF, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load i8, i8* @RAW, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 60
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call signext i8 @NXT(i32 1)
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @CUR_PTR, align 4
  %19 = call i64 @CMP4(i32 %18, i8 signext 60, i8 signext 33, i8 signext 45, i8 signext 45)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CUR, align 4
  %23 = call i64 @IS_BLANK_CH(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %17, %13
  %26 = phi i1 [ true, %17 ], [ true, %13 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi i1 [ false, %3 ], [ %26, %25 ]
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = load i8, i8* @RAW, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 60
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = call signext i8 @NXT(i32 1)
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 63
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = call i32 @xmlParsePI(%struct.TYPE_5__* %38)
  br label %50

40:                                               ; preds = %33, %29
  %41 = load i32, i32* @CUR, align 4
  %42 = call i64 @IS_BLANK_CH(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @NEXT, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32 @xmlParseComment(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %49, %37
  br label %3

51:                                               ; preds = %27
  ret void
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i64 @CMP4(i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @IS_BLANK_CH(i32) #1

declare dso_local i32 @xmlParsePI(%struct.TYPE_5__*) #1

declare dso_local i32 @xmlParseComment(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
