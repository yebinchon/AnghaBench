; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_check_variant_header.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_usrmarshal.c_check_variant_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"wv[0] %08x, expected %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wv[1] %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"vt %04x expected %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"res1 %04x expected %04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"res2 %04x expected %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"res3 %04x expected %04x\0A\00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@VT_TYPEMASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"switch_is %08x expected %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @check_variant_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_variant_header(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca { i64, i32 }, align 8
  %15 = alloca %struct.TYPE_4__, align 4
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca %struct.TYPE_4__, align 4
  %18 = alloca { i64, i32 }, align 8
  %19 = alloca %struct.TYPE_4__, align 4
  %20 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 7
  %28 = ashr i32 %27, 3
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 7
  %36 = ashr i32 %35, 3
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @V_VT(i32* %51)
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @V_VT(i32* %58)
  %60 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call { i64, i32 } @V_U2(i32* %64)
  store { i64, i32 } %65, { i64, i32 }* %10, align 8
  %66 = bitcast { i64, i32 }* %10 to i8*
  %67 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 8 %66, i64 12, i1 false)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %63, %69
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call { i64, i32 } @V_U2(i32* %75)
  store { i64, i32 } %76, { i64, i32 }* %12, align 8
  %77 = bitcast { i64, i32 }* %12 to i8*
  %78 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 8 %77, i64 12, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, i32, ...) @ok(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call { i64, i32 } @V_U2(i32* %85)
  store { i64, i32 } %86, { i64, i32 }* %14, align 8
  %87 = bitcast { i64, i32 }* %14 to i8*
  %88 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 8 %87, i64 12, i1 false)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %84, %90
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call { i64, i32 } @V_U2(i32* %96)
  store { i64, i32 } %97, { i64, i32 }* %16, align 8
  %98 = bitcast { i64, i32 }* %16 to i8*
  %99 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 8 %98, i64 12, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = call { i64, i32 } @V_U2(i32* %106)
  store { i64, i32 } %107, { i64, i32 }* %18, align 8
  %108 = bitcast { i64, i32 }* %18 to i8*
  %109 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 8 %108, i64 12, i1 false)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %105, %111
  %113 = zext i1 %112 to i32
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call { i64, i32 } @V_U2(i32* %117)
  store { i64, i32 } %118, { i64, i32 }* %20, align 8
  %119 = bitcast { i64, i32 }* %20 to i8*
  %120 = bitcast %struct.TYPE_4__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 8 %119, i64 12, i1 false)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @V_VT(i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @VT_ARRAY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %3
  %131 = load i32, i32* @VT_TYPEMASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %130, %3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32*, i32** %4, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = getelementptr inbounds i8, i8* %148, i64 40
  %150 = bitcast i8* %149 to i32*
  ret i32* %150
}

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local { i64, i32 } @V_U2(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
