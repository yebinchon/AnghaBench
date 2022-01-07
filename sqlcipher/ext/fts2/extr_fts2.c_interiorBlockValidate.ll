; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorBlockValidate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_interiorBlockValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @interiorBlockValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interiorBlockValidate(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ugt i8* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @getVarint32(i8* %32, i32* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @getVarint(i8* %54, i32* %7)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sle i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %170

74:                                               ; preds = %1
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @getVarint32(i8* %75, i32* %6)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %85, %86
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = icmp sle i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i8*, i8** %3, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %112, %74
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %169

112:                                              ; preds = %109
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @getVarint32(i8* %113, i32* %6)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp sgt i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp sge i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %4, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @getVarint32(i8* %135, i32* %6)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp sgt i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = icmp sgt i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  %148 = icmp sgt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %4, align 4
  %155 = icmp sle i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i8*, i8** %3, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %3, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %4, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %4, align 4
  br label %109

169:                                              ; preds = %109
  br label %170

170:                                              ; preds = %169, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getVarint32(i8*, i32*) #1

declare dso_local i32 @getVarint(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
