; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_AddPortEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winspool/extr_info.c_test_AddPortEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@tempfileA = common dso_local global i8* null, align 8
@LocalPortA = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"ACCESS_DENIED (ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"got %u with %u (expected '!= 0')\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"got %u with %u (expected '0' with ERROR_INVALID_PARAMETER)\0A\00", align 1
@empty = common dso_local global i32* null, align 8
@does_not_exist = common dso_local global i32* null, align 8
@winetest = common dso_local global i32 0, align 4
@PORT_TYPE_WRITE = common dso_local global i32 0, align 4
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"got %u with %u (expected '0' with ERROR_INVALID_LEVEL)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AddPortEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AddPortEx() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @tempfileA, align 8
  %4 = call i32 @DeletePortA(i32* null, i32 0, i8* %3)
  %5 = load i8*, i8** @tempfileA, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 3
  store i32* %6, i32** %7, align 8
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = bitcast %struct.TYPE_2__* %1 to i32*
  %10 = load i32*, i32** @LocalPortA, align 8
  %11 = call i32 @pAddPortExA(i32* null, i32 1, i32* %9, i32* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 (...) @GetLastError()
  %14 = call i64 @is_spooler_deactivated(i32 %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %217

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %217

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i64 %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = bitcast %struct.TYPE_2__* %1 to i32*
  %33 = load i32*, i32** @LocalPortA, align 8
  %34 = call i32 @pAddPortExA(i32* null, i32 1, i32* %32, i32* %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %26
  %42 = phi i1 [ false, %26 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %2, align 4
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %44, i64 %45)
  %47 = load i8*, i8** @tempfileA, align 8
  %48 = call i32 @DeletePortA(i32* null, i32 0, i8* %47)
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = bitcast %struct.TYPE_2__* %1 to i32*
  %51 = call i32 @pAddPortExA(i32* null, i32 1, i32* %50, i32* null)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = call i64 (...) @GetLastError()
  %56 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %41
  %59 = phi i1 [ false, %41 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %62)
  %64 = load i32, i32* %2, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** @tempfileA, align 8
  %68 = call i32 @DeletePortA(i32* null, i32 0, i8* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = bitcast %struct.TYPE_2__* %1 to i32*
  %72 = load i32*, i32** @empty, align 8
  %73 = call i32 @pAddPortExA(i32* null, i32 1, i32* %71, i32* %72)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = call i64 (...) @GetLastError()
  %78 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi i1 [ false, %69 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %2, align 4
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %83, i64 %84)
  %86 = load i32, i32* %2, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i8*, i8** @tempfileA, align 8
  %90 = call i32 @DeletePortA(i32* null, i32 0, i8* %89)
  br label %91

91:                                               ; preds = %88, %80
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = bitcast %struct.TYPE_2__* %1 to i32*
  %94 = load i32*, i32** @does_not_exist, align 8
  %95 = call i32 @pAddPortExA(i32* null, i32 1, i32* %93, i32* %94)
  store i32 %95, i32* %2, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = call i64 (...) @GetLastError()
  %100 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %98, %91
  %103 = phi i1 [ false, %91 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = call i64 (...) @GetLastError()
  %107 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %105, i64 %106)
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load i8*, i8** @tempfileA, align 8
  %112 = call i32 @DeletePortA(i32* null, i32 0, i8* %111)
  br label %113

113:                                              ; preds = %110, %102
  %114 = call i32 @SetLastError(i32 -559038737)
  %115 = load i32*, i32** @LocalPortA, align 8
  %116 = call i32 @pAddPortExA(i32* null, i32 1, i32* null, i32* %115)
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = call i64 (...) @GetLastError()
  %121 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %113
  %124 = phi i1 [ false, %113 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %2, align 4
  %127 = call i64 (...) @GetLastError()
  %128 = call i32 @ok(i32 %125, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %126, i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 3
  store i32* null, i32** %129, align 8
  %130 = call i32 @SetLastError(i32 -559038737)
  %131 = bitcast %struct.TYPE_2__* %1 to i32*
  %132 = load i32*, i32** @LocalPortA, align 8
  %133 = call i32 @pAddPortExA(i32* null, i32 1, i32* %131, i32* %132)
  store i32 %133, i32* %2, align 4
  %134 = load i32, i32* %2, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %123
  %137 = call i64 (...) @GetLastError()
  %138 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %139 = icmp eq i64 %137, %138
  br label %140

140:                                              ; preds = %136, %123
  %141 = phi i1 [ false, %123 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %2, align 4
  %144 = call i64 (...) @GetLastError()
  %145 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %143, i64 %144)
  %146 = load i32, i32* %2, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i8*, i8** @tempfileA, align 8
  %150 = call i32 @DeletePortA(i32* null, i32 0, i8* %149)
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i8*, i8** @tempfileA, align 8
  %153 = bitcast i8* %152 to i32*
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 3
  store i32* %153, i32** %154, align 8
  %155 = load i32*, i32** @LocalPortA, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 2
  store i32* %155, i32** %156, align 8
  %157 = load i32, i32* @winetest, align 4
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @PORT_TYPE_WRITE, align 4
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  store i32 %159, i32* %160, align 8
  %161 = call i32 @SetLastError(i32 -559038737)
  %162 = bitcast %struct.TYPE_2__* %1 to i32*
  %163 = load i32*, i32** @LocalPortA, align 8
  %164 = call i32 @pAddPortExA(i32* null, i32 2, i32* %162, i32* %163)
  store i32 %164, i32* %2, align 4
  %165 = load i32, i32* %2, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %151
  %168 = call i64 (...) @GetLastError()
  %169 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %170 = icmp eq i64 %168, %169
  br label %171

171:                                              ; preds = %167, %151
  %172 = phi i1 [ false, %151 ], [ %170, %167 ]
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %2, align 4
  %175 = call i64 (...) @GetLastError()
  %176 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %174, i64 %175)
  %177 = load i32, i32* %2, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i8*, i8** @tempfileA, align 8
  %181 = call i32 @DeletePortA(i32* null, i32 0, i8* %180)
  br label %182

182:                                              ; preds = %179, %171
  %183 = call i32 @SetLastError(i32 -559038737)
  %184 = bitcast %struct.TYPE_2__* %1 to i32*
  %185 = load i32*, i32** @LocalPortA, align 8
  %186 = call i32 @pAddPortExA(i32* null, i32 0, i32* %184, i32* %185)
  store i32 %186, i32* %2, align 4
  %187 = load i32, i32* %2, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %182
  %190 = call i64 (...) @GetLastError()
  %191 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %192 = icmp eq i64 %190, %191
  br label %193

193:                                              ; preds = %189, %182
  %194 = phi i1 [ false, %182 ], [ %192, %189 ]
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %2, align 4
  %197 = call i64 (...) @GetLastError()
  %198 = call i32 @ok(i32 %195, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %196, i64 %197)
  %199 = call i32 @SetLastError(i32 -559038737)
  %200 = bitcast %struct.TYPE_2__* %1 to i32*
  %201 = load i32*, i32** @LocalPortA, align 8
  %202 = call i32 @pAddPortExA(i32* null, i32 3, i32* %200, i32* %201)
  store i32 %202, i32* %2, align 4
  %203 = load i32, i32* %2, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %193
  %206 = call i64 (...) @GetLastError()
  %207 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %208 = icmp eq i64 %206, %207
  br label %209

209:                                              ; preds = %205, %193
  %210 = phi i1 [ false, %193 ], [ %208, %205 ]
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %2, align 4
  %213 = call i64 (...) @GetLastError()
  %214 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %212, i64 %213)
  %215 = load i8*, i8** @tempfileA, align 8
  %216 = call i32 @DeletePortA(i32* null, i32 0, i8* %215)
  br label %217

217:                                              ; preds = %209, %24, %16
  ret void
}

declare dso_local i32 @DeletePortA(i32*, i32, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pAddPortExA(i32*, i32, i32*, i32*) #1

declare dso_local i64 @is_spooler_deactivated(i32, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
