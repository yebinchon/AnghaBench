; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_create_mech_entry.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_mech_tabs.c_kcf_create_mech_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64*, i32, i32, i64 }

@KCF_FIRST_OPSCLASS = common dso_local global i64 0, align 8
@KCF_LAST_OPSCLASS = common dso_local global i64 0, align 8
@KCF_INVALID_MECH_CLASS = common dso_local global i32 0, align 4
@KCF_INVALID_MECH_NAME = common dso_local global i32 0, align 4
@kcf_mech_tabs_lock = common dso_local global i32 0, align 4
@CRYPTO_MECH_INVALID = common dso_local global i64 0, align 8
@KCF_SUCCESS = common dso_local global i32 0, align 4
@kcf_mech_tabs_tab = common dso_local global %struct.TYPE_4__* null, align 8
@CRYPTO_MAX_MECH_NAME = common dso_local global i32 0, align 4
@kcf_mech_hash = common dso_local global i32 0, align 4
@KCF_MECH_TAB_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @kcf_create_mech_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcf_create_mech_entry(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @KCF_FIRST_OPSCLASS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @KCF_LAST_OPSCLASS, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @KCF_INVALID_MECH_CLASS, align 4
  store i32 %18, i32* %3, align 4
  br label %143

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %19
  %29 = load i32, i32* @KCF_INVALID_MECH_NAME, align 4
  store i32 %29, i32* %3, align 4
  br label %143

30:                                               ; preds = %22
  %31 = call i32 @mutex_enter(i32* @kcf_mech_tabs_lock)
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @kcf_mech_hash_find(i8* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @CRYPTO_MECH_INVALID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = call i32 @mutex_exit(i32* @kcf_mech_tabs_lock)
  %39 = load i32, i32* @KCF_SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %143

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kcf_mech_tabs_tab, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kcf_mech_tabs_tab, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %125, %40
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %134

55:                                               ; preds = %51
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @mutex_enter(i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %55
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %80 = call i32 @strlcpy(i64* %77, i8* %78, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* @CRYPTO_MAX_MECH_NAME, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @KCF_MECHID(i64 %91, i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 %93, i32* %98, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = call i32 @mutex_exit(i32* %108)
  %110 = load i32, i32* @kcf_mech_hash, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = ptrtoint i64* %116 to i32
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = ptrtoint i32* %122 to i32
  %124 = call i32 @mod_hash_insert(i32 %110, i32 %117, i32 %123)
  br label %134

125:                                              ; preds = %55
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = call i32 @mutex_exit(i32* %130)
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %51

134:                                              ; preds = %71, %51
  %135 = call i32 @mutex_exit(i32* @kcf_mech_tabs_lock)
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @KCF_MECH_TAB_FULL, align 4
  store i32 %140, i32* %3, align 4
  br label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @KCF_SUCCESS, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %139, %37, %28, %17
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @kcf_mech_hash_find(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @KCF_MECHID(i64, i32) #1

declare dso_local i32 @mod_hash_insert(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
