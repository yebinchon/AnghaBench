; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_comserver_datalen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_get_comserver_datalen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entity_array = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.dll_redirect = type { i64 }

@ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entity_array*, %struct.dll_redirect*, i32*, i32*, i32*)* @get_comserver_datalen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_comserver_datalen(%struct.entity_array* %0, %struct.dll_redirect* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.entity_array*, align 8
  %7 = alloca %struct.dll_redirect*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.entity*, align 8
  %13 = alloca i32, align 4
  store %struct.entity_array* %0, %struct.entity_array** %6, align 8
  store %struct.dll_redirect* %1, %struct.dll_redirect** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %153, %5
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.entity_array*, %struct.entity_array** %6, align 8
  %17 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %156

20:                                               ; preds = %14
  %21 = load %struct.entity_array*, %struct.entity_array** %6, align 8
  %22 = getelementptr inbounds %struct.entity_array, %struct.entity_array* %21, i32 0, i32 1
  %23 = load %struct.entity*, %struct.entity** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.entity, %struct.entity* %23, i64 %25
  store %struct.entity* %26, %struct.entity** %12, align 8
  %27 = load %struct.entity*, %struct.entity** %12, align 8
  %28 = getelementptr inbounds %struct.entity, %struct.entity* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %152

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.entity*, %struct.entity** %12, align 8
  %44 = getelementptr inbounds %struct.entity, %struct.entity* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %111

49:                                               ; preds = %32
  %50 = load %struct.entity*, %struct.entity** %12, align 8
  %51 = getelementptr inbounds %struct.entity, %struct.entity* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strlenW(i64 %54)
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load %struct.entity*, %struct.entity** %12, align 8
  %58 = getelementptr inbounds %struct.entity, %struct.entity* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %49
  %64 = load %struct.entity*, %struct.entity** %12, align 8
  %65 = getelementptr inbounds %struct.entity, %struct.entity* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @strlenW(i64 %68)
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %63, %49
  %74 = load %struct.entity*, %struct.entity** %12, align 8
  %75 = getelementptr inbounds %struct.entity, %struct.entity* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.entity*, %struct.entity** %12, align 8
  %82 = getelementptr inbounds %struct.entity, %struct.entity* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @strlenW(i64 %85)
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, %87
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %80, %73
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = add i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i64 @aligned_string_len(i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %103, %100
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = add i64 %108, 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  br label %148

111:                                              ; preds = %32
  %112 = load %struct.entity*, %struct.entity** %12, align 8
  %113 = getelementptr inbounds %struct.entity, %struct.entity* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load %struct.entity*, %struct.entity** %12, align 8
  %120 = getelementptr inbounds %struct.entity, %struct.entity* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @strlenW(i64 %123)
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i64 @aligned_string_len(i32 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %129
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  br label %135

135:                                              ; preds = %118, %111
  %136 = load %struct.dll_redirect*, %struct.dll_redirect** %7, align 8
  %137 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @strlenW(i64 %138)
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = add i64 %145, %142
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  br label %148

148:                                              ; preds = %135, %90
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %148, %20
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %14

156:                                              ; preds = %14
  ret void
}

declare dso_local i32 @strlenW(i64) #1

declare dso_local i64 @aligned_string_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
