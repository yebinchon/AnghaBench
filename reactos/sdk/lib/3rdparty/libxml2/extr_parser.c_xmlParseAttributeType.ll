; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttributeType.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseAttributeType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHRINK = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_CDATA = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_IDREFS = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_IDREF = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ATTRIBUTE_ID = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_ENTITY = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_ENTITIES = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_NMTOKENS = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_NMTOKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseAttributeType(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* @SHRINK, align 4
  %7 = load i32, i32* @CUR_PTR, align 4
  %8 = call i64 @CMP5(i32 %7, i8 signext 67, i8 signext 68, i8 signext 65, i8 signext 84, float 6.500000e+01)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 @SKIP(i32 5)
  %12 = load i32, i32* @XML_ATTRIBUTE_CDATA, align 4
  store i32 %12, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* @CUR_PTR, align 4
  %15 = call i64 @CMP6(i32 %14, i8 signext 73, i8 signext 68, i8 signext 82, i8 signext 69, i8 signext 70, i8 signext 83)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @SKIP(i32 6)
  %19 = load i32, i32* @XML_ATTRIBUTE_IDREFS, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %13
  %21 = load i32, i32* @CUR_PTR, align 4
  %22 = call i64 @CMP5(i32 %21, i8 signext 73, i8 signext 68, i8 signext 82, i8 signext 69, float 7.000000e+01)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @SKIP(i32 5)
  %26 = load i32, i32* @XML_ATTRIBUTE_IDREF, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %20
  %28 = load i8, i8* @RAW, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 73
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = call signext i8 @NXT(i32 1)
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 68
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 @SKIP(i32 2)
  %37 = load i32, i32* @XML_ATTRIBUTE_ID, align 4
  store i32 %37, i32* %3, align 4
  br label %77

38:                                               ; preds = %31, %27
  %39 = load i32, i32* @CUR_PTR, align 4
  %40 = call i64 @CMP6(i32 %39, i8 signext 69, i8 signext 78, i8 signext 84, i8 signext 73, i8 signext 84, i8 signext 89)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call i32 @SKIP(i32 6)
  %44 = load i32, i32* @XML_ATTRIBUTE_ENTITY, align 4
  store i32 %44, i32* %3, align 4
  br label %77

45:                                               ; preds = %38
  %46 = load i32, i32* @CUR_PTR, align 4
  %47 = call i64 @CMP8(i32 %46, i8 signext 69, i8 signext 78, i8 signext 84, i8 signext 73, i8 signext 84, i8 signext 73, i8 signext 69, i8 signext 83)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call i32 @SKIP(i32 8)
  %51 = load i32, i32* @XML_ATTRIBUTE_ENTITIES, align 4
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %45
  %53 = load i32, i32* @CUR_PTR, align 4
  %54 = call i64 @CMP8(i32 %53, i8 signext 78, i8 signext 77, i8 signext 84, i8 signext 79, i8 signext 75, i8 signext 69, i8 signext 78, i8 signext 83)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 @SKIP(i32 8)
  %58 = load i32, i32* @XML_ATTRIBUTE_NMTOKENS, align 4
  store i32 %58, i32* %3, align 4
  br label %77

59:                                               ; preds = %52
  %60 = load i32, i32* @CUR_PTR, align 4
  %61 = call i64 @CMP7(i32 %60, i8 signext 78, i8 signext 77, i8 signext 84, i8 signext 79, i8 signext 75, i8 signext 69, i8 signext 78)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 @SKIP(i32 7)
  %65 = load i32, i32* @XML_ATTRIBUTE_NMTOKEN, align 4
  store i32 %65, i32* %3, align 4
  br label %77

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @xmlParseEnumeratedType(i32 %74, i32* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %63, %56, %49, %42, %35, %24, %17, %10
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @CMP5(i32, i8 signext, i8 signext, i8 signext, i8 signext, float) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i64 @CMP6(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local signext i8 @NXT(i32) #1

declare dso_local i64 @CMP8(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @CMP7(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @xmlParseEnumeratedType(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
