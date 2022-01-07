; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_concat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@TM_CONCAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32)* @luaV_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaV_concat(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %14

14:                                               ; preds = %162, %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 2
  %23 = call i64 @ttisstring(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 2
  %28 = call i64 @ttisnumber(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %14
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = call i64 @tostring(%struct.TYPE_14__* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 2
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 2
  %44 = load i32, i32* @TM_CONCAT, align 4
  %45 = call i32 @call_binTM(%struct.TYPE_14__* %37, i32 %39, i32 %41, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %36
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 2
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32 @luaG_concaterror(%struct.TYPE_14__* %48, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %47, %36
  br label %153

55:                                               ; preds = %30
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call %struct.TYPE_15__* @tsvalue(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 2
  %66 = call i64 @tostring(%struct.TYPE_14__* %63, i32 %65)
  br label %152

67:                                               ; preds = %55
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call %struct.TYPE_15__* @tsvalue(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %106, %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = call i64 @tostring(%struct.TYPE_14__* %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %77, %73
  %86 = phi i1 [ false, %73 ], [ %84, %77 ]
  br i1 %86, label %87, label %109

87:                                               ; preds = %85
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = call %struct.TYPE_15__* @tsvalue(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %12, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %9, align 8
  %97 = sub i64 -3, %96
  %98 = icmp uge i64 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = call i32 @luaG_runerror(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %87
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %9, align 8
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %73

109:                                              ; preds = %85
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = call %struct.TYPE_13__* @G(%struct.TYPE_14__* %111)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i64, i64* %9, align 8
  %115 = call i8* @luaZ_openspace(%struct.TYPE_14__* %110, i32* %113, i64 %114)
  store i8* %115, i8** %10, align 8
  store i64 0, i64* %9, align 8
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %139, %109
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call %struct.TYPE_15__* @tsvalue(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %13, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @svalue(i32 %132)
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @memcpy(i8* %129, i32 %133, i64 %134)
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %11, align 4
  br label %117

142:                                              ; preds = %117
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @luaS_newlstr(%struct.TYPE_14__* %147, i8* %148, i64 %149)
  %151 = call i32 @setsvalue(%struct.TYPE_14__* %143, i32 %146, i32 %150)
  br label %152

152:                                              ; preds = %142, %62
  br label %153

153:                                              ; preds = %152, %54
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %5, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %14, label %165

165:                                              ; preds = %162
  ret void
}

declare dso_local i64 @ttisstring(i32) #1

declare dso_local i64 @ttisnumber(i32) #1

declare dso_local i64 @tostring(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @call_binTM(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaG_concaterror(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @tsvalue(i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @luaZ_openspace(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local %struct.TYPE_13__* @G(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @svalue(i32) #1

declare dso_local i32 @setsvalue(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @luaS_newlstr(%struct.TYPE_14__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
