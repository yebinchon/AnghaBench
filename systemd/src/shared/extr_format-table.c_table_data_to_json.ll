; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_data_to_json.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_data_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**)* @table_data_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_data_to_json(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %154 [
    i32 149, label %9
    i32 138, label %12
    i32 151, label %18
    i32 135, label %24
    i32 133, label %24
    i32 134, label %24
    i32 137, label %39
    i32 136, label %39
    i32 139, label %54
    i32 150, label %54
    i32 146, label %68
    i32 142, label %74
    i32 145, label %80
    i32 144, label %86
    i32 143, label %92
    i32 132, label %98
    i32 128, label %104
    i32 131, label %110
    i32 130, label %116
    i32 129, label %122
    i32 140, label %128
    i32 148, label %134
    i32 141, label %140
    i32 147, label %147
  ]

9:                                                ; preds = %2
  %10 = load i32**, i32*** %5, align 8
  %11 = call i32 @json_variant_new_null(i32** %10)
  store i32 %11, i32* %3, align 4
  br label %157

12:                                               ; preds = %2
  %13 = load i32**, i32*** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 18
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @json_variant_new_string(i32** %13, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %157

18:                                               ; preds = %2
  %19 = load i32**, i32*** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 17
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @json_variant_new_boolean(i32** %19, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %157

24:                                               ; preds = %2, %2, %2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USEC_INFINITY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32**, i32*** %5, align 8
  %32 = call i32 @json_variant_new_null(i32** %31)
  store i32 %32, i32* %3, align 4
  br label %157

33:                                               ; preds = %24
  %34 = load i32**, i32*** %5, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @json_variant_new_unsigned(i32** %34, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %157

39:                                               ; preds = %2, %2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @USEC_INFINITY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32**, i32*** %5, align 8
  %47 = call i32 @json_variant_new_null(i32** %46)
  store i32 %47, i32* %3, align 4
  br label %157

48:                                               ; preds = %39
  %49 = load i32**, i32*** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @json_variant_new_unsigned(i32** %49, i64 %52)
  store i32 %53, i32* %3, align 4
  br label %157

54:                                               ; preds = %2, %2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32**, i32*** %5, align 8
  %61 = call i32 @json_variant_new_null(i32** %60)
  store i32 %61, i32* %3, align 4
  br label %157

62:                                               ; preds = %54
  %63 = load i32**, i32*** %5, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @json_variant_new_unsigned(i32** %63, i64 %66)
  store i32 %67, i32* %3, align 4
  br label %157

68:                                               ; preds = %2
  %69 = load i32**, i32*** %5, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @json_variant_new_integer(i32** %69, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %157

74:                                               ; preds = %2
  %75 = load i32**, i32*** %5, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 15
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @json_variant_new_integer(i32** %75, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %157

80:                                               ; preds = %2
  %81 = load i32**, i32*** %5, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 14
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @json_variant_new_integer(i32** %81, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %157

86:                                               ; preds = %2
  %87 = load i32**, i32*** %5, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @json_variant_new_integer(i32** %87, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %157

92:                                               ; preds = %2
  %93 = load i32**, i32*** %5, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @json_variant_new_integer(i32** %93, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %157

98:                                               ; preds = %2
  %99 = load i32**, i32*** %5, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @json_variant_new_unsigned(i32** %99, i64 %102)
  store i32 %103, i32* %3, align 4
  br label %157

104:                                              ; preds = %2
  %105 = load i32**, i32*** %5, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @json_variant_new_unsigned(i32** %105, i64 %108)
  store i32 %109, i32* %3, align 4
  br label %157

110:                                              ; preds = %2
  %111 = load i32**, i32*** %5, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @json_variant_new_unsigned(i32** %111, i64 %114)
  store i32 %115, i32* %3, align 4
  br label %157

116:                                              ; preds = %2
  %117 = load i32**, i32*** %5, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @json_variant_new_unsigned(i32** %117, i64 %120)
  store i32 %121, i32* %3, align 4
  br label %157

122:                                              ; preds = %2
  %123 = load i32**, i32*** %5, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @json_variant_new_unsigned(i32** %123, i64 %126)
  store i32 %127, i32* %3, align 4
  br label %157

128:                                              ; preds = %2
  %129 = load i32**, i32*** %5, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @json_variant_new_integer(i32** %129, i32 %132)
  store i32 %133, i32* %3, align 4
  br label %157

134:                                              ; preds = %2
  %135 = load i32**, i32*** %5, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @json_variant_new_integer(i32** %135, i32 %138)
  store i32 %139, i32* %3, align 4
  br label %157

140:                                              ; preds = %2
  %141 = load i32**, i32*** %5, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 9
  %144 = load i32, i32* @AF_INET, align 4
  %145 = call i32 @FAMILY_ADDRESS_SIZE(i32 %144)
  %146 = call i32 @json_variant_new_array_bytes(i32** %141, i32* %143, i32 %145)
  store i32 %146, i32* %3, align 4
  br label %157

147:                                              ; preds = %2
  %148 = load i32**, i32*** %5, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 9
  %151 = load i32, i32* @AF_INET6, align 4
  %152 = call i32 @FAMILY_ADDRESS_SIZE(i32 %151)
  %153 = call i32 @json_variant_new_array_bytes(i32** %148, i32* %150, i32 %152)
  store i32 %153, i32* %3, align 4
  br label %157

154:                                              ; preds = %2
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %147, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %59, %48, %45, %33, %30, %18, %12, %9
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @json_variant_new_null(i32**) #1

declare dso_local i32 @json_variant_new_string(i32**, i32) #1

declare dso_local i32 @json_variant_new_boolean(i32**, i32) #1

declare dso_local i32 @json_variant_new_unsigned(i32**, i64) #1

declare dso_local i32 @json_variant_new_integer(i32**, i32) #1

declare dso_local i32 @json_variant_new_array_bytes(i32**, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
