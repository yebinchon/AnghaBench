; ModuleID = '/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_auto_sense.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libefi/extr_rdwr_efi.c_efi_auto_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dk_gpt = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EFI_NUMPAR = common dso_local global i32 0, align 4
@efi_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"efi_alloc_and_init failed.\0A\00", align 1
@V_NUMPAR = common dso_local global i32 0, align 4
@default_vtoc_map = common dso_local global %struct.TYPE_4__* null, align 8
@V_UNASSIGNED = common dso_local global i32 0, align 4
@V_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_auto_sense(i32 %0, %struct.dk_gpt** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dk_gpt**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dk_gpt** %1, %struct.dk_gpt*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EFI_NUMPAR, align 4
  %9 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %10 = call i64 @efi_alloc_and_init(i32 %7, i32 %8, %struct.dk_gpt** %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* @efi_debug, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  store i32 -1, i32* %3, align 4
  br label %151

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %23 = load %struct.dk_gpt*, %struct.dk_gpt** %22, align 8
  %24 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @V_NUMPAR, align 4
  %27 = call i32 @MIN(i32 %25, i32 %26)
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_vtoc_map, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %37 = load %struct.dk_gpt*, %struct.dk_gpt** %36, align 8
  %38 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32 %35, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @default_vtoc_map, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %51 = load %struct.dk_gpt*, %struct.dk_gpt** %50, align 8
  %52 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %49, i32* %57, align 4
  %58 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %59 = load %struct.dk_gpt*, %struct.dk_gpt** %58, align 8
  %60 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %67 = load %struct.dk_gpt*, %struct.dk_gpt** %66, align 8
  %68 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %29
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %79 = load %struct.dk_gpt*, %struct.dk_gpt** %78, align 8
  %80 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 34, i32* %83, align 4
  %84 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %85 = load %struct.dk_gpt*, %struct.dk_gpt** %84, align 8
  %86 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 262144, i32* %89, align 4
  %90 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %91 = load %struct.dk_gpt*, %struct.dk_gpt** %90, align 8
  %92 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 262178, i32* %95, align 4
  %96 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %97 = load %struct.dk_gpt*, %struct.dk_gpt** %96, align 8
  %98 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i32 262144, i32* %101, align 4
  %102 = load i32, i32* @V_UNASSIGNED, align 4
  %103 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %104 = load %struct.dk_gpt*, %struct.dk_gpt** %103, align 8
  %105 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i32 %102, i32* %108, align 4
  %109 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %110 = load %struct.dk_gpt*, %struct.dk_gpt** %109, align 8
  %111 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 6
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 524322, i32* %114, align 4
  %115 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %116 = load %struct.dk_gpt*, %struct.dk_gpt** %115, align 8
  %117 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 524322
  %120 = sub nsw i32 %119, 16384
  %121 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %122 = load %struct.dk_gpt*, %struct.dk_gpt** %121, align 8
  %123 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 6
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %120, i32* %126, align 4
  %127 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %128 = load %struct.dk_gpt*, %struct.dk_gpt** %127, align 8
  %129 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 16384
  %132 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %133 = load %struct.dk_gpt*, %struct.dk_gpt** %132, align 8
  %134 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 4
  %138 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %139 = load %struct.dk_gpt*, %struct.dk_gpt** %138, align 8
  %140 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i32 16384, i32* %143, align 4
  %144 = load i32, i32* @V_RESERVED, align 4
  %145 = load %struct.dk_gpt**, %struct.dk_gpt*** %5, align 8
  %146 = load %struct.dk_gpt*, %struct.dk_gpt** %145, align 8
  %147 = getelementptr inbounds %struct.dk_gpt, %struct.dk_gpt* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  store i32 %144, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %77, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @efi_alloc_and_init(i32, i32, %struct.dk_gpt**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
