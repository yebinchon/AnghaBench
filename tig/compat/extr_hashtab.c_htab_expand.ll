; ModuleID = '/home/carl/AnghaBench/tig/compat/extr_hashtab.c_htab_expand.c'
source_filename = "/home/carl/AnghaBench/tig/compat/extr_hashtab.c_htab_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64*, i32, i64, i32, i32 (i32, i64*)*, i32 (i64*)*, i32 (i64)*, i64, i32, i64 (i64, i32)*, i64 (i32, i64, i32)* }

@prime_tab = common dso_local global %struct.TYPE_7__* null, align 8
@HTAB_EMPTY_ENTRY = common dso_local global i64 0, align 8
@HTAB_DELETED_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @htab_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htab_expand(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64* %26, i64** %5, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i64 @htab_elements(%struct.TYPE_6__* %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = mul i64 %29, 2
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %1
  %34 = load i64, i64* %10, align 8
  %35 = mul i64 %34, 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %39, 32
  br i1 %40, label %41, label %51

41:                                               ; preds = %38, %1
  %42 = load i64, i64* %10, align 8
  %43 = mul i64 %42, 2
  %44 = call i32 @higher_prime_index(i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @prime_tab, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  br label %54

51:                                               ; preds = %38, %33
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 10
  %57 = load i64 (i32, i64, i32)*, i64 (i32, i64, i32)** %56, align 8
  %58 = icmp ne i64 (i32, i64, i32)* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  %62 = load i64 (i32, i64, i32)*, i64 (i32, i64, i32)** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i64 %62(i32 %65, i64 %66, i32 8)
  %68 = inttoptr i64 %67 to i64*
  store i64* %68, i64** %7, align 8
  br label %76

69:                                               ; preds = %54
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 9
  %72 = load i64 (i64, i32)*, i64 (i64, i32)** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 %72(i64 %73, i32 8)
  %75 = inttoptr i64 %74 to i64*
  store i64* %75, i64** %7, align 8
  br label %76

76:                                               ; preds = %69, %59
  %77 = load i64*, i64** %7, align 8
  %78 = icmp eq i64* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %156

80:                                               ; preds = %76
  %81 = load i64*, i64** %7, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64* %81, i64** %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 7
  store i64 0, i64* %100, align 8
  %101 = load i64*, i64** %4, align 8
  store i64* %101, i64** %6, align 8
  br label %102

102:                                              ; preds = %125, %80
  %103 = load i64*, i64** %6, align 8
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  %116 = load i32 (i64)*, i32 (i64)** %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 %116(i64 %117)
  %119 = call i64* @find_empty_slot_for_expand(%struct.TYPE_6__* %113, i32 %118)
  store i64* %119, i64** %14, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load i64*, i64** %14, align 8
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %112, %108, %102
  %123 = load i64*, i64** %6, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %6, align 8
  br label %125

125:                                              ; preds = %122
  %126 = load i64*, i64** %6, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = icmp ult i64* %126, %127
  br i1 %128, label %102, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = load i32 (i64*)*, i32 (i64*)** %131, align 8
  %133 = icmp ne i32 (i64*)* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 5
  %137 = load i32 (i64*)*, i32 (i64*)** %136, align 8
  %138 = load i64*, i64** %4, align 8
  %139 = call i32 %137(i64* %138)
  br label %155

140:                                              ; preds = %129
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32 (i32, i64*)*, i32 (i32, i64*)** %142, align 8
  %144 = icmp ne i32 (i32, i64*)* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32 (i32, i64*)*, i32 (i32, i64*)** %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i64*, i64** %4, align 8
  %153 = call i32 %148(i32 %151, i64* %152)
  br label %154

154:                                              ; preds = %145, %140
  br label %155

155:                                              ; preds = %154, %134
  store i32 1, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %79
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @htab_elements(%struct.TYPE_6__*) #1

declare dso_local i32 @higher_prime_index(i64) #1

declare dso_local i64* @find_empty_slot_for_expand(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
