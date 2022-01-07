; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmname.c_test_assembly_name_props_line.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmname.c_test_assembly_name_props_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@ASM_NAME_MAX_PARAMS = common dso_local global i64 0, align 8
@ASM_NAME_CONFIG_MASK = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@ASM_NAME_FILE_MAJOR_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%d: prop %d: Expected %08x, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%d: prop %d: Expected %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%d: prop %d: str[0] = %x\0A\00", align 1
@ASM_NAME_NAME = common dso_local global i64 0, align 8
@ASM_NAME_CULTURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"%d: prop %d: wrong value\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%d: prop %d: Expected %s, got %s\0A\00", align 1
@STRSAFE_E_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [63 x i8] c"%d: prop %d: Expected STRSAFE_E_INSUFFICIENT_BUFFER, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32)* @test_assembly_name_props_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_assembly_name_props_line(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %20

20:                                               ; preds = %197, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @ASM_NAME_MAX_PARAMS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %200

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @to_widechar(i32* %16, i32 %29)
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = mul nuw i64 4, %18
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %19, i32 204, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @IAssemblyName_GetProperty(i32* %36, i64 %37, i32* %19, i64* %9)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %72, label %46

46:                                               ; preds = %24
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @ASM_NAME_CONFIG_MASK, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @E_INVALIDARG, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ false, %46 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @ASM_NAME_FILE_MAJOR_VERSION, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @E_INVALIDARG, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @broken(i32 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %54, %24
  %73 = phi i1 [ true, %54 ], [ true, %24 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76, i64 %81, i64 %82)
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @E_INVALIDARG, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %196

87:                                               ; preds = %72
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %88, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %97, i64 %102, i64 %103)
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %87
  %108 = getelementptr inbounds i32, i32* %19, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = icmp eq i32 %109, 52428
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %6, align 4
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i32, i32* %19, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %112, i64 %113, i32 %115)
  br label %156

117:                                              ; preds = %87
  %118 = load i64, i64* %9, align 8
  %119 = load i32, i32* @MAX_PATH, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ne i64 %118, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %117
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @ASM_NAME_NAME, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %122
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @ASM_NAME_CULTURE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @memcmp(i32 %135, i32* %19, i64 %136)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %6, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %141, i64 %142)
  br label %154

144:                                              ; preds = %126, %122
  %145 = call i32 @lstrcmpW(i32* %16, i32* %19)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %6, align 4
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @wine_dbgstr_w(i32* %16)
  %152 = call i64 @wine_dbgstr_w(i32* %19)
  %153 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %149, i64 %150, i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %144, %130
  br label %155

155:                                              ; preds = %154, %117
  br label %156

156:                                              ; preds = %155, %107
  %157 = load i64, i64* %9, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %195

159:                                              ; preds = %156
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* @MAX_PATH, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp ne i64 %160, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %159
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, -1
  store i64 %166, i64* %9, align 8
  %167 = load i32*, i32** %4, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @IAssemblyName_GetProperty(i32* %167, i64 %168, i32* %19, i64* %9)
  store i64 %169, i64* %7, align 8
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* @STRSAFE_E_INSUFFICIENT_BUFFER, align 8
  %172 = icmp eq i64 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %173, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %174, i64 %175, i64 %176)
  %178 = load i64, i64* %9, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %178, %183
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %6, align 4
  %187 = load i64, i64* %8, align 8
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %186, i64 %187, i64 %192, i64 %193)
  br label %195

195:                                              ; preds = %164, %159, %156
  br label %196

196:                                              ; preds = %195, %72
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %8, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %8, align 8
  br label %20

200:                                              ; preds = %20
  %201 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %201)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @to_widechar(i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @IAssemblyName_GetProperty(i32*, i64, i32*, i64*) #2

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @memcmp(i32, i32*, i64) #2

declare dso_local i32 @lstrcmpW(i32*, i32*) #2

declare dso_local i64 @wine_dbgstr_w(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
