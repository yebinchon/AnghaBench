; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_data.c_test_initvar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_data.c_test_initvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@__const.test_initvar.osvi = private unnamed_addr constant %struct.TYPE_3__ { i32 20, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"_winver\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_winmajor\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_winminor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_osver\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_osplatform\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"_winver variables are not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Wrong value for _winminor %02x expected %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Wrong value for _winmajor %02x expected %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Wrong value for _winver %02x expected %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"_osver variables are not available\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Wrong value for _osver %04x expected %04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Wrong value for _osplatform %x expected %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_initvar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_initvar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_initvar.osvi to i8*), i64 20, i1 false)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @GetProcAddress(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @GetProcAddress(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %32, %1
  %39 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %133

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = call i32 @GetVersionExA(%struct.TYPE_3__* %3)
  %48 = load i32, i32* %11, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %69, %71
  %73 = icmp eq i32 %66, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %78, %80
  %82 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %75, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %40
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85, %40
  %89 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %133

90:                                               ; preds = %85
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %117, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 24
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %111, %113
  br label %115

115:                                              ; preds = %107, %100
  %116 = phi i1 [ false, %100 ], [ %114, %107 ]
  br label %117

117:                                              ; preds = %115, %90
  %118 = phi i1 [ true, %90 ], [ %116, %115 ]
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %12, align 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %120, i32 %122)
  %124 = load i32, i32* %13, align 4
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %13, align 4
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %117, %88, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @GetVersionExA(%struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
