; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_patches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_patch.c_msi_apply_patches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@szPatch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"patches to be applied: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_apply_patches(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32****, align 8
  %4 = alloca i32*****, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @szPatch, align 4
  %12 = call i32****** @msi_dup_property(i32 %10, i32 %11)
  %13 = bitcast i32****** %12 to i32****
  store i32**** %13, i32***** %3, align 8
  %14 = load i32****, i32***** %3, align 8
  %15 = call i32 @debugstr_w(i32**** %14)
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32****, i32***** %3, align 8
  %18 = call i32******* @msi_split_string(i32**** %17, i8 signext 59)
  %19 = bitcast i32******* %18 to i32*****
  store i32***** %19, i32****** %4, align 8
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %42, %1
  %21 = load i32*****, i32****** %4, align 8
  %22 = icmp ne i32***** %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*****, i32****** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32****, i32***** %24, i64 %25
  %27 = load i32****, i32***** %26, align 8
  %28 = icmp ne i32**** %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ERROR_SUCCESS, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %23, %20
  %34 = phi i1 [ false, %23 ], [ false, %20 ], [ %32, %29 ]
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = load i32*****, i32****** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32****, i32***** %37, i64 %38
  %40 = load i32****, i32***** %39, align 8
  %41 = call i64 @msi_apply_patch_package(%struct.TYPE_4__* %36, i32**** %40)
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %20

45:                                               ; preds = %33
  %46 = load i32*****, i32****** %4, align 8
  %47 = bitcast i32***** %46 to i32****
  %48 = call i32 @msi_free(i32**** %47)
  %49 = load i32****, i32***** %3, align 8
  %50 = call i32 @msi_free(i32**** %49)
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i32****** @msi_dup_property(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32****) #1

declare dso_local i32******* @msi_split_string(i32****, i8 signext) #1

declare dso_local i64 @msi_apply_patch_package(%struct.TYPE_4__*, i32****) #1

declare dso_local i32 @msi_free(i32****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
