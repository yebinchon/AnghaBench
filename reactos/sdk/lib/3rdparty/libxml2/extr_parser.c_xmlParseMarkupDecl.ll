; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseMarkupDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseMarkupDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }

@GROW = common dso_local global i32 0, align 4
@CUR = common dso_local global i8 0, align 1
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@RAW = common dso_local global i8 0, align 1
@XML_PARSER_DTD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseMarkupDecl(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load i32, i32* @GROW, align 4
  %4 = load i8, i8* @CUR, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 60
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = call signext i8 @NXT(i32 1)
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 33
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = call signext i8 @NXT(i32 2)
  %13 = sext i8 %12 to i32
  switch i32 %13, label %39 [
    i32 69, label %14
    i32 65, label %30
    i32 78, label %33
    i32 45, label %36
  ]

14:                                               ; preds = %11
  %15 = call signext i8 @NXT(i32 3)
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 76
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i32 @xmlParseElementDecl(%struct.TYPE_10__* %19)
  br label %29

21:                                               ; preds = %14
  %22 = call signext i8 @NXT(i32 3)
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 78
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i32 @xmlParseEntityDecl(%struct.TYPE_10__* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %18
  br label %40

30:                                               ; preds = %11
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = call i32 @xmlParseAttributeListDecl(%struct.TYPE_10__* %31)
  br label %40

33:                                               ; preds = %11
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = call i32 @xmlParseNotationDecl(%struct.TYPE_10__* %34)
  br label %40

36:                                               ; preds = %11
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = call i32 @xmlParseComment(%struct.TYPE_10__* %37)
  br label %40

39:                                               ; preds = %11
  br label %40

40:                                               ; preds = %39, %36, %33, %30, %29
  br label %49

41:                                               ; preds = %7
  %42 = call signext i8 @NXT(i32 1)
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = call i32 @xmlParsePI(%struct.TYPE_10__* %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XML_PARSER_EOF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %87

57:                                               ; preds = %50
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load i8, i8* @RAW, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 60
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call signext i8 @NXT(i32 1)
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 33
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = call signext i8 @NXT(i32 2)
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = call i32 @xmlParseConditionalSections(%struct.TYPE_10__* %80)
  br label %82

82:                                               ; preds = %79, %75, %71, %67
  br label %83

83:                                               ; preds = %82, %62, %57
  %84 = load i64, i64* @XML_PARSER_DTD, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %56
  ret void
}

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i32 @xmlParseElementDecl(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParseEntityDecl(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParseAttributeListDecl(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParseNotationDecl(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParseComment(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParsePI(%struct.TYPE_10__*) #1

declare dso_local i32 @xmlParseConditionalSections(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
