; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_testAlgIDToOID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_testAlgIDToOID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ALG_CLASS_SIGNATURE = common dso_local global i32 0, align 4
@ALG_TYPE_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Didn't expect last error (%08x) to be set\0A\00", align 1
@algIDToOID = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"CertAlgIdToOID failed, expected %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected %s or %s, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testAlgIDToOID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testAlgIDToOID() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 @SetLastError(i32 -559038737)
  %4 = load i32, i32* @ALG_CLASS_SIGNATURE, align 4
  %5 = load i32, i32* @ALG_TYPE_ANY, align 4
  %6 = or i32 %4, %5
  %7 = or i32 %6, 80
  %8 = call i32* @CertAlgIdToOID(i32 %7)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = call i32 (...) @GetLastError()
  %13 = icmp eq i32 %12, -559038737
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 (...) @GetLastError()
  %18 = call i32 (i32, i8*, i32, ...) @ok(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %118, %14
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @CertAlgIdToOID(i32 %30)
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** %2, align 8
  %36 = icmp ne i32* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @broken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %24
  %42 = phi i1 [ true, %24 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %117

53:                                               ; preds = %41
  %54 = load i32*, i32** %2, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i32* %54, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %53
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %63
  %72 = load i32*, i32** %2, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i32* %72, i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %94, i32* %95)
  br label %106

97:                                               ; preds = %63
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 (i32, i8*, i32, ...) @ok(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32* %104)
  br label %106

106:                                              ; preds = %97, %71
  br label %116

107:                                              ; preds = %53
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algIDToOID, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32* %114)
  br label %116

116:                                              ; preds = %107, %106
  br label %117

117:                                              ; preds = %116, %41
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %1, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %1, align 4
  br label %19

121:                                              ; preds = %19
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @CertAlgIdToOID(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @strcmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
