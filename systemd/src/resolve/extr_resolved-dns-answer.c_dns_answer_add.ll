; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-answer.c_dns_answer_add.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-answer.c_dns_answer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_answer_add(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = call i32 @assert(%struct.TYPE_14__* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOSPC, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %157

19:                                               ; preds = %4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %157

27:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %148, %27
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %151

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %148

45:                                               ; preds = %34
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dns_resource_key_equal(i32 %54, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %157

63:                                               ; preds = %45
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %148

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = icmp ne i32 %72, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %157

88:                                               ; preds = %67
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = call i32 @dns_resource_record_payload_equal(%struct.TYPE_14__* %95, %struct.TYPE_14__* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %157

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %148

106:                                              ; preds = %102
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %109, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %106
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = call i32 @dns_resource_record_ref(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = call i32 @dns_resource_record_unref(%struct.TYPE_14__* %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store %struct.TYPE_14__* %131, %struct.TYPE_14__** %137, align 8
  br label %138

138:                                              ; preds = %120, %106
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %139
  store i32 %147, i32* %145, align 4
  store i32 0, i32* %5, align 4
  br label %157

148:                                              ; preds = %105, %66, %44
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %10, align 8
  br label %28

151:                                              ; preds = %28
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @dns_answer_add_raw(%struct.TYPE_15__* %152, %struct.TYPE_14__* %153, i32 %154, i32 %155)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %151, %138, %100, %85, %61, %24, %16
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_resource_key_equal(i32, i32) #1

declare dso_local i32 @dns_resource_record_payload_equal(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @dns_resource_record_ref(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_resource_record_unref(%struct.TYPE_14__*) #1

declare dso_local i32 @dns_answer_add_raw(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
