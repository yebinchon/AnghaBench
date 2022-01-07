; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_test_ConfigurePortUI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localui/extr_localui.c_test_ConfigurePortUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@ERROR_UNKNOWN_PORT = common dso_local global i64 0, align 8
@ERROR_INVALID_PRINTER_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"got %d with %u (expected '0' with: ERROR_UNKNOWN_PORT or ERROR_INVALID_PRINTER_NAME)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@does_not_existW = common dso_local global i32* null, align 8
@winetest_interactive = common dso_local global i64 0, align 8
@lpt_present = common dso_local global %struct.TYPE_3__* null, align 8
@ERROR_CANCELLED = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"got %d with %u (expected '!= 0' or '0' with: ERROR_CANCELLED or ERROR_ACCESS_DENIED)\0A\00", align 1
@lpt_absent = common dso_local global i32* null, align 8
@com_present = common dso_local global %struct.TYPE_4__* null, align 8
@com_absent = common dso_local global i32* null, align 8
@file_present = common dso_local global i64 0, align 8
@portname_fileW = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"got %d with %u (expected '0' with: ERROR_CANCELLED or ERROR_ACCESS_DENIED)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ConfigurePortUI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ConfigurePortUI() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @GetLastError()
  %8 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi i1 [ false, %0 ], [ %15, %14 ]
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i64 (...) @GetLastError()
  %21 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  %22 = call i32 @SetLastError(i32 -559038737)
  %23 = load i32*, i32** @emptyW, align 8
  %24 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %16
  %28 = call i64 (...) @GetLastError()
  %29 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i1 [ false, %16 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %1, align 8
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  %43 = call i32 @SetLastError(i32 -559038737)
  %44 = load i32*, i32** @does_not_existW, align 8
  %45 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %44)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %37
  %49 = call i64 (...) @GetLastError()
  %50 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ true, %48 ], [ %55, %52 ]
  br label %58

58:                                               ; preds = %56, %37
  %59 = phi i1 [ false, %37 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %1, align 8
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i64, i64* @winetest_interactive, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lpt_present, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lpt_present, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %73)
  store i64 %74, i64* %1, align 8
  %75 = load i64, i64* %1, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = call i64 (...) @GetLastError()
  %79 = load i64, i64* @ERROR_CANCELLED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = call i64 (...) @GetLastError()
  %83 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %84 = icmp eq i64 %82, %83
  br label %85

85:                                               ; preds = %81, %77, %69
  %86 = phi i1 [ true, %77 ], [ true, %69 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %1, align 8
  %89 = call i64 (...) @GetLastError()
  %90 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %66, %58
  %92 = load i32*, i32** @lpt_absent, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = call i32 @SetLastError(i32 -559038737)
  %96 = load i32*, i32** @lpt_absent, align 8
  %97 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %96)
  store i64 %97, i64* %1, align 8
  %98 = load i64, i64* %1, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %94
  %101 = call i64 (...) @GetLastError()
  %102 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = call i64 (...) @GetLastError()
  %106 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ true, %100 ], [ %107, %104 ]
  br label %110

110:                                              ; preds = %108, %94
  %111 = phi i1 [ false, %94 ], [ %109, %108 ]
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %1, align 8
  %114 = call i64 (...) @GetLastError()
  %115 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %110, %91
  %117 = load i64, i64* @winetest_interactive, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %116
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_present, align 8
  %121 = icmp ne %struct.TYPE_4__* %120, null
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_present, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %126)
  store i64 %127, i64* %1, align 8
  %128 = load i64, i64* %1, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %122
  %131 = call i64 (...) @GetLastError()
  %132 = load i64, i64* @ERROR_CANCELLED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = call i64 (...) @GetLastError()
  %136 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %137 = icmp eq i64 %135, %136
  br label %138

138:                                              ; preds = %134, %130, %122
  %139 = phi i1 [ true, %130 ], [ true, %122 ], [ %137, %134 ]
  %140 = zext i1 %139 to i32
  %141 = load i64, i64* %1, align 8
  %142 = call i64 (...) @GetLastError()
  %143 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %138, %119, %116
  %145 = load i32*, i32** @com_absent, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %169

147:                                              ; preds = %144
  %148 = call i32 @SetLastError(i32 -559038737)
  %149 = load i32*, i32** @com_absent, align 8
  %150 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %149)
  store i64 %150, i64* %1, align 8
  %151 = load i64, i64* %1, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %147
  %154 = call i64 (...) @GetLastError()
  %155 = load i64, i64* @ERROR_UNKNOWN_PORT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = call i64 (...) @GetLastError()
  %159 = load i64, i64* @ERROR_INVALID_PRINTER_NAME, align 8
  %160 = icmp eq i64 %158, %159
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i1 [ true, %153 ], [ %160, %157 ]
  br label %163

163:                                              ; preds = %161, %147
  %164 = phi i1 [ false, %147 ], [ %162, %161 ]
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %1, align 8
  %167 = call i64 (...) @GetLastError()
  %168 = call i32 @ok(i32 %165, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %166, i64 %167)
  br label %169

169:                                              ; preds = %163, %144
  %170 = load i64, i64* @winetest_interactive, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %197

172:                                              ; preds = %169
  %173 = load i64, i64* @file_present, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %197

175:                                              ; preds = %172
  %176 = call i32 @SetLastError(i32 -559038737)
  %177 = load i32*, i32** @portname_fileW, align 8
  %178 = call i64 @pConfigurePortUI(i32* null, i32* null, i32* %177)
  store i64 %178, i64* %1, align 8
  %179 = load i64, i64* %1, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %175
  %182 = call i64 (...) @GetLastError()
  %183 = load i64, i64* @ERROR_CANCELLED, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = call i64 (...) @GetLastError()
  %187 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi i1 [ true, %181 ], [ %188, %185 ]
  br label %191

191:                                              ; preds = %189, %175
  %192 = phi i1 [ false, %175 ], [ %190, %189 ]
  %193 = zext i1 %192 to i32
  %194 = load i64, i64* %1, align 8
  %195 = call i64 (...) @GetLastError()
  %196 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %194, i64 %195)
  br label %197

197:                                              ; preds = %191, %172, %169
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pConfigurePortUI(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
