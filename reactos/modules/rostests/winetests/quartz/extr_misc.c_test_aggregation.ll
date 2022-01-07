; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_misc.c_test_aggregation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/quartz/extr_misc.c_test_aggregation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CoCreateInstance failed with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pUnkOuter is NULL\0A\00", align 1
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Class not registered\0A\00", align 1
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"CoCreateInstance returned %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"pUnkInnerFail is not NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"pUnkInner is NULL\0A\00", align 1
@IID_IGraphConfig = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"IUnknown_QueryInterface returned %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Pointer is NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"One of the required interfaces is NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @test_aggregation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aggregation(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %20 = bitcast i32** %11 to i32*
  %21 = call i64 @CoCreateInstance(i32* %5, i32* null, i32 %19, i32* @IID_IUnknown, i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %9, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %247

36:                                               ; preds = %4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %39 = bitcast i32** %13 to i32*
  %40 = call i64 @CoCreateInstance(i32* %6, i32* %37, i32 %38, i32* %8, i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %247

46:                                               ; preds = %36
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @E_NOINTERFACE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %59 = bitcast i32** %12 to i32*
  %60 = call i64 @CoCreateInstance(i32* %6, i32* %57, i32 %58, i32* @IID_IUnknown, i32* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %9, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32*, i32** %12, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %46
  %74 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %247

75:                                               ; preds = %46
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @ADDREF_EXPECT(i32* %76, i32 2)
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @ADDREF_EXPECT(i32* %78, i32 2)
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @RELEASE_EXPECT(i32* %80, i32 1)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @RELEASE_EXPECT(i32* %82, i32 1)
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @QI_FAIL(i32* %84, i32 %85, i32* %86)
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @QI_FAIL(i32* %88, i32 %89, i32* %90)
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @QI_SUCCEED(i32* %92, i32 %93, i32* %94)
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @IID_IUnknown, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @QI_SUCCEED(i32* %96, i32 %97, i32* %98)
  %100 = call i64 @IsEqualGUID(i32* @IID_IGraphConfig, i32* %8)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %75
  %103 = load i32*, i32** %12, align 8
  %104 = bitcast i32** %16 to i32*
  %105 = call i64 @IUnknown_QueryInterface(i32* %103, i32* %8, i32* %104)
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @E_NOINTERFACE, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @broken(i32 %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %109, %102
  %117 = phi i1 [ true, %102 ], [ %115, %109 ]
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %9, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %119)
  %121 = load i32*, i32** %16, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %116
  %124 = load i32*, i32** %16, align 8
  %125 = icmp ne i32* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @broken(i32 %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %123, %116
  %131 = phi i1 [ true, %116 ], [ %129, %123 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %139

134:                                              ; preds = %75
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @QI_SUCCEED(i32* %135, i32 %136, i32* %137)
  br label %139

139:                                              ; preds = %134, %130
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* @IID_IUnknown, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = call i32 @QI_SUCCEED(i32* %140, i32 %141, i32* %142)
  %144 = load i32*, i32** %17, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = load i32*, i32** %14, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32*, i32** %16, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %15, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %152, %149, %146, %139
  %156 = call i32 @skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %247

157:                                              ; preds = %152
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 @ADDREF_EXPECT(i32* %158, i32 5)
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @ADDREF_EXPECT(i32* %160, i32 6)
  %162 = load i32*, i32** %16, align 8
  %163 = call i32 @ADDREF_EXPECT(i32* %162, i32 7)
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @ADDREF_EXPECT(i32* %164, i32 3)
  %166 = load i32*, i32** %17, align 8
  %167 = call i32 @RELEASE_EXPECT(i32* %166, i32 6)
  %168 = load i32*, i32** %14, align 8
  %169 = call i32 @RELEASE_EXPECT(i32* %168, i32 5)
  %170 = load i32*, i32** %16, align 8
  %171 = call i32 @RELEASE_EXPECT(i32* %170, i32 4)
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @RELEASE_EXPECT(i32* %172, i32 2)
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* @IID_IUnknown, align 4
  %176 = load i32*, i32** %18, align 8
  %177 = call i32 @QI_SUCCEED(i32* %174, i32 %175, i32* %176)
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* @IID_IUnknown, align 4
  %180 = load i32*, i32** %18, align 8
  %181 = call i32 @QI_SUCCEED(i32* %178, i32 %179, i32* %180)
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* @IID_IUnknown, align 4
  %184 = load i32*, i32** %18, align 8
  %185 = call i32 @QI_SUCCEED(i32* %182, i32 %183, i32* %184)
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* @IID_IUnknown, align 4
  %188 = load i32*, i32** %18, align 8
  %189 = call i32 @QI_SUCCEED(i32* %186, i32 %187, i32* %188)
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32*, i32** %18, align 8
  %193 = call i32 @QI_FAIL(i32* %190, i32 %191, i32* %192)
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32*, i32** %18, align 8
  %197 = call i32 @QI_FAIL(i32* %194, i32 %195, i32* %196)
  %198 = load i32*, i32** %16, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %18, align 8
  %201 = call i32 @QI_FAIL(i32* %198, i32 %199, i32* %200)
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %8, align 4
  %204 = load i32*, i32** %18, align 8
  %205 = call i32 @QI_SUCCEED(i32* %202, i32 %203, i32* %204)
  %206 = load i32*, i32** %17, align 8
  %207 = load i32, i32* %7, align 4
  %208 = load i32*, i32** %18, align 8
  %209 = call i32 @QI_SUCCEED(i32* %206, i32 %207, i32* %208)
  %210 = load i32*, i32** %14, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @QI_SUCCEED(i32* %210, i32 %211, i32* %212)
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load i32*, i32** %18, align 8
  %217 = call i32 @QI_SUCCEED(i32* %214, i32 %215, i32* %216)
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i32*, i32** %18, align 8
  %221 = call i32 @QI_FAIL(i32* %218, i32 %219, i32* %220)
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @RELEASE_EXPECT(i32* %222, i32 10)
  %224 = load i32*, i32** %14, align 8
  %225 = call i32 @RELEASE_EXPECT(i32* %224, i32 9)
  %226 = load i32*, i32** %16, align 8
  %227 = call i32 @RELEASE_EXPECT(i32* %226, i32 8)
  %228 = load i32*, i32** %15, align 8
  %229 = call i32 @RELEASE_EXPECT(i32* %228, i32 2)
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @RELEASE_EXPECT(i32* %230, i32 7)
  %232 = load i32*, i32** %12, align 8
  %233 = call i32 @RELEASE_EXPECT(i32* %232, i32 1)
  br label %234

234:                                              ; preds = %237, %157
  %235 = load i32*, i32** %12, align 8
  %236 = call i64 @IUnknown_Release(i32* %235)
  store i64 %236, i64* %10, align 8
  br label %237

237:                                              ; preds = %234
  %238 = load i64, i64* %10, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %234, label %240

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %244, %240
  %242 = load i32*, i32** %11, align 8
  %243 = call i64 @IUnknown_Release(i32* %242)
  store i64 %243, i64* %10, align 8
  br label %244

244:                                              ; preds = %241
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %241, label %247

247:                                              ; preds = %34, %44, %73, %155, %244
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ADDREF_EXPECT(i32*, i32) #1

declare dso_local i32 @RELEASE_EXPECT(i32*, i32) #1

declare dso_local i32 @QI_FAIL(i32*, i32, i32*) #1

declare dso_local i32 @QI_SUCCEED(i32*, i32, i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
