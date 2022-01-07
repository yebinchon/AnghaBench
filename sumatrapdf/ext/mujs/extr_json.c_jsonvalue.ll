; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_jsonvalue.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_jsonvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"JSON: unexpected token: %s (expected string)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"JSON: unexpected token: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @jsonvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonvalue(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %103 [
    i32 129, label %8
    i32 130, label %16
    i32 123, label %24
    i32 91, label %65
    i32 128, label %88
    i32 132, label %93
    i32 131, label %98
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @js_pushstring(%struct.TYPE_15__* %9, i8* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call i32 @jsonnext(%struct.TYPE_15__* %14)
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @js_pushnumber(%struct.TYPE_15__* %17, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = call i32 @jsonnext(%struct.TYPE_15__* %22)
  br label %110

24:                                               ; preds = %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @js_newobject(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = call i32 @jsonnext(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = call i32 @jsonaccept(%struct.TYPE_15__* %29, i8 signext 125)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %110

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %58, %33
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @jsY_tokenstring(i32 %43)
  %45 = call i32 @js_syntaxerror(%struct.TYPE_15__* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %4, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = call i32 @jsonnext(%struct.TYPE_15__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = call i32 @jsonexpect(%struct.TYPE_15__* %52, i8 signext 58)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  call void @jsonvalue(%struct.TYPE_15__* %54)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @js_setproperty(%struct.TYPE_15__* %55, i32 -2, i8* %56)
  br label %58

58:                                               ; preds = %46
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = call i32 @jsonaccept(%struct.TYPE_15__* %59, i8 signext 44)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %34, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = call i32 @jsonexpect(%struct.TYPE_15__* %63, i8 signext 125)
  br label %110

65:                                               ; preds = %1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = call i32 @js_newarray(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = call i32 @jsonnext(%struct.TYPE_15__* %68)
  store i32 0, i32* %3, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %71 = call i32 @jsonaccept(%struct.TYPE_15__* %70, i8 signext 93)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %110

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %81, %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  call void @jsonvalue(%struct.TYPE_15__* %76)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  %80 = call i32 @js_setindex(%struct.TYPE_15__* %77, i32 -2, i32 %78)
  br label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = call i32 @jsonaccept(%struct.TYPE_15__* %82, i8 signext 44)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %75, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = call i32 @jsonexpect(%struct.TYPE_15__* %86, i8 signext 93)
  br label %110

88:                                               ; preds = %1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %90 = call i32 @js_pushboolean(%struct.TYPE_15__* %89, i32 1)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = call i32 @jsonnext(%struct.TYPE_15__* %91)
  br label %110

93:                                               ; preds = %1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = call i32 @js_pushboolean(%struct.TYPE_15__* %94, i32 0)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = call i32 @jsonnext(%struct.TYPE_15__* %96)
  br label %110

98:                                               ; preds = %1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = call i32 @js_pushnull(%struct.TYPE_15__* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = call i32 @jsonnext(%struct.TYPE_15__* %101)
  br label %110

103:                                              ; preds = %1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @jsY_tokenstring(i32 %107)
  %109 = call i32 @js_syntaxerror(%struct.TYPE_15__* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %32, %73, %103, %98, %93, %88, %85, %62, %16, %8
  ret void
}

declare dso_local i32 @js_pushstring(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @jsonnext(%struct.TYPE_15__*) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @js_newobject(%struct.TYPE_15__*) #1

declare dso_local i32 @jsonaccept(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @js_syntaxerror(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @jsY_tokenstring(i32) #1

declare dso_local i32 @jsonexpect(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @js_setproperty(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @js_newarray(%struct.TYPE_15__*) #1

declare dso_local i32 @js_setindex(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @js_pushboolean(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @js_pushnull(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
