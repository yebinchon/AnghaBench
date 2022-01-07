; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_record_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_31__*, i32, %struct.TYPE_28__, i64, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_29__*)* @dns_resource_record_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @dns_resource_record_free(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %3 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_29__* %3)
  %5 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %8 = icmp ne %struct.TYPE_31__* %7, null
  br i1 %8, label %9, label %168

9:                                                ; preds = %1
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %136 [
    i32 131, label %15
    i32 135, label %21
    i32 139, label %21
    i32 146, label %21
    i32 145, label %21
    i32 142, label %27
    i32 128, label %38
    i32 132, label %38
    i32 133, label %44
    i32 140, label %55
    i32 143, label %61
    i32 130, label %67
    i32 144, label %73
    i32 134, label %79
    i32 138, label %90
    i32 137, label %101
    i32 141, label %117
    i32 149, label %117
    i32 148, label %117
    i32 129, label %118
    i32 147, label %124
    i32 136, label %135
  ]

15:                                               ; preds = %9
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 18
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free(i32 %19)
  br label %148

21:                                               ; preds = %9, %9, %9, %9
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 17
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free(i32 %25)
  br label %148

27:                                               ; preds = %9
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 16
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free(i32 %31)
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 16
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free(i32 %36)
  br label %148

38:                                               ; preds = %9, %9
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dns_txt_item_free_all(i32 %42)
  br label %148

44:                                               ; preds = %9
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 14
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free(i32 %48)
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 14
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @free(i32 %53)
  br label %148

55:                                               ; preds = %9
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 13
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @free(i32 %59)
  br label %148

61:                                               ; preds = %9
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @free(i32 %65)
  br label %148

67:                                               ; preds = %9
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free(i32 %71)
  br label %148

73:                                               ; preds = %9
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @free(i32 %77)
  br label %148

79:                                               ; preds = %9
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @free(i32 %83)
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @free(i32 %88)
  br label %148

90:                                               ; preds = %9
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @free(i32 %94)
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @bitmap_free(i32 %99)
  br label %148

101:                                              ; preds = %9
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @free(i32 %105)
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @free(i32 %110)
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @bitmap_free(i32 %115)
  br label %148

117:                                              ; preds = %9, %9, %9
  br label %148

118:                                              ; preds = %9
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @free(i32 %122)
  br label %148

124:                                              ; preds = %9
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @free(i32 %128)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @free(i32 %133)
  br label %148

135:                                              ; preds = %9
  br label %136

136:                                              ; preds = %9, %135
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @free(i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  br label %148

148:                                              ; preds = %147, %124, %118, %117, %101, %90, %79, %73, %67, %61, %55, %44, %38, %27, %21, %15
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @free(i32 %157)
  br label %159

159:                                              ; preds = %153, %148
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @free(i32 %162)
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %165, align 8
  %167 = call i32 @dns_resource_key_unref(%struct.TYPE_31__* %166)
  br label %168

168:                                              ; preds = %159, %1
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @free(i32 %171)
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %174 = call %struct.TYPE_29__* @mfree(%struct.TYPE_29__* %173)
  ret %struct.TYPE_29__* %174
}

declare dso_local i32 @assert(%struct.TYPE_29__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @dns_txt_item_free_all(i32) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @dns_resource_key_unref(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @mfree(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
