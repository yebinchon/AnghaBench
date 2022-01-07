; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_InitPropVariantFromBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/propsys/extr_propsys.c_test_InitPropVariantFromBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@test_InitPropVariantFromBuffer.data_in = internal constant [5 x i8] c"test\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"InitPropVariantFromBuffer returned %x\0A\00", align 1
@VT_VECTOR = common dso_local global i32 0, align 4
@VT_UI1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"propvar.vt = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cElems = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Data inside array is incorrect\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"InitVariantFromBuffer returned %x\0A\00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"V_VT(&var) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"SafeArrayGetDim returned %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"SafeArrayGetLBound returned %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"LBound = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"SafeArrayGetUBound returned %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"UBound = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"SafeArrayAccessData failed %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Data inside safe array is incorrect\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SafeArrayUnaccessData failed %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InitPropVariantFromBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InitPropVariantFromBuffer() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 @InitPropVariantFromBuffer(i8* null, i32 0, %struct.TYPE_8__* %1)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @S_OK, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VT_VECTOR, align 4
  %16 = load i32, i32* @VT_UI1, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = call i32 @PropVariantClear(%struct.TYPE_8__* %1)
  %37 = call i32 @InitPropVariantFromBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_InitPropVariantFromBuffer.data_in, i64 0, i64 0), i32 4, %struct.TYPE_8__* %1)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VT_VECTOR, align 4
  %47 = load i32, i32* @VT_UI1, align 4
  %48 = or i32 %46, %47
  %49 = icmp eq i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 4
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @memcmp(i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_InitPropVariantFromBuffer.data_in, i64 0, i64 0), i32 4)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @PropVariantClear(%struct.TYPE_8__* %1)
  %79 = call i32 @InitVariantFromBuffer(i8* null, i32 0, i32* %2)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %3, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = call i32 @V_VT(i32* %2)
  %87 = load i32, i32* @VT_ARRAY, align 4
  %88 = load i32, i32* @VT_UI1, align 4
  %89 = or i32 %87, %88
  %90 = icmp eq i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @V_VT(i32* %2)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = call i32 @V_ARRAY(i32* %2)
  %95 = call i32 @SafeArrayGetDim(i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = call i32 @V_ARRAY(i32* %2)
  %102 = call i32 @SafeArrayGetLBound(i32 %101, i32 1, i32* %5)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @S_OK, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  %114 = call i32 @V_ARRAY(i32* %2)
  %115 = call i32 @SafeArrayGetUBound(i32 %114, i32 1, i32* %5)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, -1
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %125)
  %127 = call i32 @VariantClear(i32* %2)
  %128 = call i32 @InitVariantFromBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_InitPropVariantFromBuffer.data_in, i64 0, i64 0), i32 4, i32* %2)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @S_OK, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %3, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  %135 = call i32 @V_VT(i32* %2)
  %136 = load i32, i32* @VT_ARRAY, align 4
  %137 = load i32, i32* @VT_UI1, align 4
  %138 = or i32 %136, %137
  %139 = icmp eq i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @V_VT(i32* %2)
  %142 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %141)
  %143 = call i32 @V_ARRAY(i32* %2)
  %144 = call i32 @SafeArrayGetDim(i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp eq i32 %145, 1
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %5, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = call i32 @V_ARRAY(i32* %2)
  %151 = call i32 @SafeArrayGetLBound(i32 %150, i32 1, i32* %5)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %3, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  %163 = call i32 @V_ARRAY(i32* %2)
  %164 = call i32 @SafeArrayGetUBound(i32 %163, i32 1, i32* %5)
  store i32 %164, i32* %3, align 4
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @S_OK, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %3, align 4
  %170 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = icmp eq i32 %171, 3
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %5, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  %176 = call i32 @V_ARRAY(i32* %2)
  %177 = call i32 @SafeArrayAccessData(i32 %176, i8** %4)
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @S_OK, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %3, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %182)
  %184 = load i8*, i8** %4, align 8
  %185 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_InitPropVariantFromBuffer.data_in, i64 0, i64 0), i8* %184, i32 4)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %190 = call i32 @V_ARRAY(i32* %2)
  %191 = call i32 @SafeArrayUnaccessData(i32 %190)
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @S_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %3, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %196)
  %198 = call i32 @VariantClear(i32* %2)
  ret void
}

declare dso_local i32 @InitPropVariantFromBuffer(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_8__*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @InitVariantFromBuffer(i8*, i32, i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @SafeArrayGetDim(i32) #1

declare dso_local i32 @V_ARRAY(i32*) #1

declare dso_local i32 @SafeArrayGetLBound(i32, i32, i32*) #1

declare dso_local i32 @SafeArrayGetUBound(i32, i32, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @SafeArrayAccessData(i32, i8**) #1

declare dso_local i32 @SafeArrayUnaccessData(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
