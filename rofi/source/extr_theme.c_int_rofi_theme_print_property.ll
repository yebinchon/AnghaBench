; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_int_rofi_theme_print_property.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_int_rofi_theme_print_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i8*, double, %struct.TYPE_12__, %struct.TYPE_17__, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { double, double, double, double }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { double, double, double, double }
%struct.TYPE_19__ = type { i32*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@ROFI_HL_BOLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"bold \00", align 1
@ROFI_HL_UNDERLINE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"underline \00", align 1
@ROFI_HL_STRIKETHROUGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"strikethrough \00", align 1
@ROFI_HL_ITALIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"italic \00", align 1
@ROFI_HL_COLOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"rgba ( %.0f, %.0f, %.0f, %.0f %% )\00", align 1
@WindowLocationStr = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"var( %s, \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"var(%s)\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @int_rofi_theme_print_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_rofi_theme_print_property(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %378 [
    i32 132, label %7
    i32 131, label %34
    i32 136, label %44
    i32 129, label %128
    i32 128, label %137
    i32 134, label %143
    i32 137, label %149
    i32 139, label %155
    i32 138, label %164
    i32 130, label %190
    i32 133, label %348
    i32 135, label %376
  ]

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %3, align 8
  br label %13

13:                                               ; preds = %29, %7
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %16
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = call %struct.TYPE_19__* @g_list_next(%struct.TYPE_19__* %30)
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %3, align 8
  br label %13

32:                                               ; preds = %13
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %379

34:                                               ; preds = %1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ROFI_ORIENTATION_HORIZONTAL, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %379

44:                                               ; preds = %1
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ROFI_HL_BOLD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %44
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ROFI_HL_UNDERLINE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %55
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ROFI_HL_STRIKETHROUGH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %66
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ROFI_HL_ITALIC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %77
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ROFI_HL_COLOR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %88
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load double, double* %102, align 8
  %104 = fmul double %103, 2.550000e+02
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fmul double %110, 2.550000e+02
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load double, double* %116, align 8
  %118 = fmul double %117, 2.550000e+02
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load double, double* %123, align 8
  %125 = fmul double %124, 1.000000e+02
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), double %104, double %111, double %118, double %125)
  br label %127

127:                                              ; preds = %97, %88
  br label %379

128:                                              ; preds = %1
  %129 = load i8**, i8*** @WindowLocationStr, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i8*, i8** %129, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %135)
  br label %379

137:                                              ; preds = %1
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %141)
  br label %379

143:                                              ; preds = %1
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 %147)
  br label %379

149:                                              ; preds = %1
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load double, double* %152, align 8
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double %153)
  br label %379

155:                                              ; preds = %1
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %162)
  br label %379

164:                                              ; preds = %1
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load double, double* %168, align 8
  %170 = fmul double %169, 2.550000e+02
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load double, double* %174, align 8
  %176 = fmul double %175, 2.550000e+02
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load double, double* %180, align 8
  %182 = fmul double %181, 2.550000e+02
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load double, double* %186, align 8
  %188 = fmul double %187, 1.000000e+02
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), double %170, double %176, double %182, double %188)
  br label %379

190:                                              ; preds = %1
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @distance_compare(i32 %195, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %236

203:                                              ; preds = %190
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @distance_compare(i32 %208, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %203
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @distance_compare(i32 %221, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %216
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @rofi_theme_print_distance(i32 %234)
  br label %347

236:                                              ; preds = %216, %203, %190
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @distance_compare(i32 %241, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %236
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @distance_compare(i32 %254, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %249
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @rofi_theme_print_distance(i32 %267)
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @rofi_theme_print_distance(i32 %273)
  br label %346

275:                                              ; preds = %249, %236
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @distance_compare(i32 %280, i32 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %320, label %288

288:                                              ; preds = %275
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @distance_compare(i32 %293, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %320

301:                                              ; preds = %288
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @rofi_theme_print_distance(i32 %306)
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @rofi_theme_print_distance(i32 %312)
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @rofi_theme_print_distance(i32 %318)
  br label %345

320:                                              ; preds = %288, %275
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @rofi_theme_print_distance(i32 %325)
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @rofi_theme_print_distance(i32 %331)
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 4
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @rofi_theme_print_distance(i32 %337)
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @rofi_theme_print_distance(i32 %343)
  br label %345

345:                                              ; preds = %320, %301
  br label %346

346:                                              ; preds = %345, %262
  br label %347

347:                                              ; preds = %346, %229
  br label %379

348:                                              ; preds = %1
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %352, align 8
  %354 = icmp ne %struct.TYPE_18__* %353, null
  br i1 %354, label %355, label %368

355:                                              ; preds = %348
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %360)
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %365, align 8
  call void @int_rofi_theme_print_property(%struct.TYPE_18__* %366)
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %375

368:                                              ; preds = %348
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %373)
  br label %375

375:                                              ; preds = %368, %355
  br label %379

376:                                              ; preds = %1
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %379

378:                                              ; preds = %1
  br label %379

379:                                              ; preds = %378, %376, %375, %347, %164, %155, %149, %143, %137, %128, %127, %34, %32
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_19__* @g_list_next(%struct.TYPE_19__*) #1

declare dso_local i32 @distance_compare(i32, i32) #1

declare dso_local i32 @rofi_theme_print_distance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
