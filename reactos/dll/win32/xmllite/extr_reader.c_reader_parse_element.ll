; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@ltW = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@XmlReadInState_MiscEnd = common dso_local global i32 0, align 4
@XmlReadInState_Content = common dso_local global i32 0, align 4
@XmlNodeType_Element = common dso_local global i32 0, align 4
@StringValue_Prefix = common dso_local global i32 0, align 4
@StringValue_QualifiedName = common dso_local global i32 0, align 4
@StringValue_Value = common dso_local global i32 0, align 4
@strval_empty = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @reader_parse_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_element(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %66 [
    i32 129, label %11
    i32 128, label %25
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load i32, i32* @ltW, align 4
  %14 = call i32 @reader_cmp(%struct.TYPE_8__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @S_FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i32 @reader_skipn(%struct.TYPE_8__* %19, i32 1)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = call i32 @reader_shrink(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 128, i32* %24, align 4
  br label %25

25:                                               ; preds = %1, %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @reader_parse_stag(%struct.TYPE_8__* %26, i32* %6, i32* %7, i32* %5)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @FAILED(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @XmlReadInState_MiscEnd, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %51

47:                                               ; preds = %38, %33
  %48 = load i32, i32* @XmlReadInState_Content, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @XmlNodeType_Element, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 129, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = load i32, i32* @StringValue_Prefix, align 4
  %59 = call i32 @reader_set_strvalue(%struct.TYPE_8__* %57, i32 %58, i32* %6)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = load i32, i32* @StringValue_QualifiedName, align 4
  %62 = call i32 @reader_set_strvalue(%struct.TYPE_8__* %60, i32 %61, i32* %5)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = load i32, i32* @StringValue_Value, align 4
  %65 = call i32 @reader_set_strvalue(%struct.TYPE_8__* %63, i32 %64, i32* @strval_empty)
  br label %68

66:                                               ; preds = %1
  %67 = load i32, i32* @E_FAIL, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %31, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @reader_cmp(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @reader_shrink(%struct.TYPE_8__*) #1

declare dso_local i32 @reader_parse_stag(%struct.TYPE_8__*, i32*, i32*, i32*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @reader_set_strvalue(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
