; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParserHandlePEReference.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParserHandlePEReference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@XML_ERR_PEREF_AT_EOF = common dso_local global i32 0, align 4
@XML_ERR_PEREF_IN_PROLOG = common dso_local global i32 0, align 4
@XML_ERR_PEREF_IN_EPILOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParserHandlePEReference(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %45 [
    i32 144, label %6
    i32 143, label %7
    i32 129, label %8
    i32 140, label %9
    i32 137, label %10
    i32 132, label %14
    i32 130, label %14
    i32 134, label %14
    i32 139, label %18
    i32 142, label %18
    i32 145, label %18
    i32 133, label %18
    i32 128, label %18
    i32 131, label %18
    i32 136, label %19
    i32 138, label %23
    i32 141, label %24
    i32 135, label %44
  ]

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load i32, i32* @XML_ERR_PEREF_AT_EOF, align 4
  %13 = call i32 @xmlFatalErr(%struct.TYPE_5__* %11, i32 %12, i32* null)
  br label %48

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = load i32, i32* @XML_ERR_PEREF_IN_PROLOG, align 4
  %17 = call i32 @xmlFatalErr(%struct.TYPE_5__* %15, i32 %16, i32* null)
  br label %48

18:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = load i32, i32* @XML_ERR_PEREF_IN_EPILOG, align 4
  %22 = call i32 @xmlFatalErr(%struct.TYPE_5__* %20, i32 %21, i32* null)
  br label %48

23:                                               ; preds = %1
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %48

35:                                               ; preds = %29, %24
  %36 = call i32 @NXT(i32 1)
  %37 = call i32 @IS_BLANK_CH(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call i32 @NXT(i32 1)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %35
  br label %48

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %1
  br label %48

45:                                               ; preds = %1, %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = call i32 @xmlParsePEReference(%struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %45, %44, %42, %34, %23, %19, %18, %14, %10, %9, %8, %7, %6
  ret void
}

declare dso_local i32 @xmlFatalErr(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @IS_BLANK_CH(i32) #1

declare dso_local i32 @NXT(i32) #1

declare dso_local i32 @xmlParsePEReference(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
