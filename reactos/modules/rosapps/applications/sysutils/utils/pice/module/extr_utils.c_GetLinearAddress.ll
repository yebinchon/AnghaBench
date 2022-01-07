; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_GetLinearAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_GetLinearAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tagDESCRIPTOR = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"GetLinearAddress(): pGDT = %.8X\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"GetLinearAddress(): original Segment:Offset = %.4X:%.8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GetLinearAddress(): Segment is in LDT\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GetLinearAddress(): no LDT\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"GetLinearAddress(): Segment:Offset = %.4X:%.8X\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"GetLinearAddress(%.4X:%.8X)=%.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetLinearAddress(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tagDESCRIPTOR*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @ENTER_FUNC()
  %11 = bitcast i32* %3 to %struct.tagDESCRIPTOR*
  store %struct.tagDESCRIPTOR* %11, %struct.tagDESCRIPTOR** %7, align 8
  %12 = call %struct.TYPE_3__* (...) @GetGDTPtr()
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = ptrtoint %struct.TYPE_3__* %13 to i32
  %15 = call i32 @DPRINT(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DPRINT(i32 %17)
  %19 = load %struct.tagDESCRIPTOR*, %struct.tagDESCRIPTOR** %7, align 8
  %20 = getelementptr inbounds %struct.tagDESCRIPTOR, %struct.tagDESCRIPTOR* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %2
  %24 = call i32 @DPRINT(i32 ptrtoint ([39 x i8]* @.str.2 to i32))
  call void asm "\0A\09 \09\09\09sldt %ax\0A\09 \09\09\09mov %ax,$0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %3) #2, !srcloc !2
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = call i32 @DPRINT(i32 ptrtoint ([28 x i8]* @.str.3 to i32))
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = load %struct.tagDESCRIPTOR*, %struct.tagDESCRIPTOR** %7, align 8
  %31 = getelementptr inbounds %struct.tagDESCRIPTOR, %struct.tagDESCRIPTOR* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 24
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = load %struct.tagDESCRIPTOR*, %struct.tagDESCRIPTOR** %7, align 8
  %39 = getelementptr inbounds %struct.tagDESCRIPTOR, %struct.tagDESCRIPTOR* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %36, %44
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = load %struct.tagDESCRIPTOR*, %struct.tagDESCRIPTOR** %7, align 8
  %48 = getelementptr inbounds %struct.tagDESCRIPTOR, %struct.tagDESCRIPTOR* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %45, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %5, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = ptrtoint %struct.TYPE_3__* %56 to i32
  %58 = call i32 @IsRangeValid(i32 %57, i32 8)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %27
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  br label %61

61:                                               ; preds = %60, %27
  br label %63

62:                                               ; preds = %23
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @DPRINT(i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 16
  %89 = or i32 %80, %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 24
  %98 = or i32 %89, %97
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %70, %67, %64
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @DPRINT(i32 %105)
  %107 = call i32 (...) @LEAVE_FUNC()
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local %struct.TYPE_3__* @GetGDTPtr(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @IsRangeValid(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 991, i32 994, i32 1011}
