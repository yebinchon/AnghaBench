; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_extend_fields.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_message_extend_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64*, i8*, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i64, i64, i32)* @message_extend_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @message_extend_fields(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32 @assert(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %204

22:                                               ; preds = %4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 4, %26
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @ALIGN_TO(i64 %28, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = load i64, i64* %13, align 8
  %39 = icmp ugt i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %22
  br label %201

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  br label %204

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @ALIGN8(i64 %60)
  %62 = call i8* @realloc(i8* %59, i32 %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %201

66:                                               ; preds = %56
  br label %80

67:                                               ; preds = %51
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @ALIGN8(i64 %68)
  %70 = call i8* @malloc(i32 %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %201

74:                                               ; preds = %67
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @memcpy(i8* %75, i8* %78, i32 4)
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i8*, i8** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr i8, i8* %85, i64 %86
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub i64 %88, %89
  %91 = call i32 @memzero(i8* %87, i64 %90)
  br label %92

92:                                               ; preds = %84, %80
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* %13, align 8
  %100 = sub i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 11
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @adjust_pointer(i8* %106, i8* %107, i64 %108, i8* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 10
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @adjust_pointer(i8* %117, i8* %118, i64 %119, i8* %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 10
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 9
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @adjust_pointer(i8* %128, i8* %129, i64 %130, i8* %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 9
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @adjust_pointer(i8* %139, i8* %140, i64 %141, i8* %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @adjust_pointer(i8* %150, i8* %151, i64 %152, i8* %155)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @adjust_pointer(i8* %162, i8* %163, i64 %164, i8* %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i8* %168, i8** %171, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %92
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = call i64 @ELEMENTSOF(i64* %182)
  %184 = icmp sge i64 %179, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %201

186:                                              ; preds = %176
  %187 = load i64, i64* %13, align 8
  %188 = sub i64 %187, 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 4
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %193, align 8
  %196 = getelementptr inbounds i64, i64* %191, i64 %194
  store i64 %188, i64* %196, align 8
  br label %197

197:                                              ; preds = %186, %92
  %198 = load i8*, i8** %11, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr i8, i8* %198, i64 %199
  store i8* %200, i8** %5, align 8
  br label %204

201:                                              ; preds = %185, %73, %65, %40
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  store i8* null, i8** %5, align 8
  br label %204

204:                                              ; preds = %201, %197, %45, %21
  %205 = load i8*, i8** %5, align 8
  ret i8* %205
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @ALIGN_TO(i64, i64) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @ALIGN8(i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memzero(i8*, i64) #1

declare dso_local i8* @adjust_pointer(i8*, i8*, i64, i8*) #1

declare dso_local i64 @ELEMENTSOF(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
