; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_method_try_start.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_method_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32**)*, i8*, i32 (i32*, i8*, i8*)*, i32 (i32*)*, i32 (i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, %struct.TYPE_7__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Initialization of %s failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set %s option.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Try `-m %s:help' for more information.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to parse option `%s'.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Try -m %s:help' for more information.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to start adjustment method %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**, i32*, i8*)* @method_try_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_try_start(%struct.TYPE_6__* %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (i32**)*, i32 (i32**)** %17, align 8
  %19 = load i32**, i32*** %7, align 8
  %20 = call i32 %18(i32** %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @fprintf(i32 %24, i8* %25, i8* %28)
  store i32 -1, i32* %5, align 4
  br label %165

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.TYPE_8__* @config_ini_get_section(i32* %31, i8* %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %84

38:                                               ; preds = %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %12, align 8
  br label %42

42:                                               ; preds = %79, %38
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %47, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 %48(i32* %50, i8* %53, i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %45
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32 (i32*)*, i32 (i32*)** %62, align 8
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 %63(i32* %65)
  %67 = load i32, i32* @stderr, align 4
  %68 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @fprintf(i32 %67, i8* %68, i8* %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @fprintf(i32 %73, i8* %74, i8* %77)
  store i32 -1, i32* %5, align 4
  br label %165

79:                                               ; preds = %45
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %12, align 8
  br label %42

83:                                               ; preds = %42
  br label %84

84:                                               ; preds = %83, %30
  br label %85

85:                                               ; preds = %140, %84
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %142

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 58)
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %13, align 8
  store i8 0, i8* %94, align 1
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i8*, i8** %9, align 8
  store i8* %97, i8** %14, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i8* @strchr(i8* %98, i8 signext 61)
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @fprintf(i32 %103, i8* %104, i8* %105)
  store i32 -1, i32* %5, align 4
  br label %165

107:                                              ; preds = %96
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %15, align 8
  store i8 0, i8* %108, align 1
  br label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32 (i32*, i8*, i8*)*, i32 (i32*, i8*, i8*)** %112, align 8
  %114 = load i32**, i32*** %7, align 8
  %115 = load i32*, i32** %114, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 %113(i32* %115, i8* %116, i8* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %110
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32 (i32*)*, i32 (i32*)** %123, align 8
  %125 = load i32**, i32*** %7, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 %124(i32* %126)
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @fprintf(i32 %128, i8* %129, i8* %132)
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @fprintf(i32 %134, i8* %135, i8* %138)
  store i32 -1, i32* %5, align 4
  br label %165

140:                                              ; preds = %110
  %141 = load i8*, i8** %13, align 8
  store i8* %141, i8** %9, align 8
  br label %85

142:                                              ; preds = %85
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32 (i32*)*, i32 (i32*)** %144, align 8
  %146 = load i32**, i32*** %7, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 %145(i32* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %142
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  %154 = load i32 (i32*)*, i32 (i32*)** %153, align 8
  %155 = load i32**, i32*** %7, align 8
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 %154(i32* %156)
  %158 = load i32, i32* @stderr, align 4
  %159 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @fprintf(i32 %158, i8* %159, i8* %162)
  store i32 -1, i32* %5, align 4
  br label %165

164:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %151, %121, %102, %60, %23
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_8__* @config_ini_get_section(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
