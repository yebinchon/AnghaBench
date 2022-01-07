; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_a85_flush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_encode-basic.c_a85_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a85 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.a85*)* @a85_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a85_flush(i32* %0, %struct.a85* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.a85*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.a85* %1, %struct.a85** %4, align 8
  %10 = load %struct.a85*, %struct.a85** %4, align 8
  %11 = getelementptr inbounds %struct.a85, %struct.a85* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = udiv i32 %13, 85
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = udiv i32 %15, 85
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = udiv i32 %17, 85
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = udiv i32 %19, 85
  store i32 %20, i32* %5, align 4
  %21 = load %struct.a85*, %struct.a85** %4, align 8
  %22 = getelementptr inbounds %struct.a85, %struct.a85* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 70
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.a85*, %struct.a85** %4, align 8
  %28 = getelementptr inbounds %struct.a85, %struct.a85* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fz_write_byte(i32* %26, i32 %29, i32 10)
  %31 = load %struct.a85*, %struct.a85** %4, align 8
  %32 = getelementptr inbounds %struct.a85, %struct.a85* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.a85*, %struct.a85** %4, align 8
  %35 = getelementptr inbounds %struct.a85, %struct.a85* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %99

38:                                               ; preds = %33
  %39 = load %struct.a85*, %struct.a85** %4, align 8
  %40 = getelementptr inbounds %struct.a85, %struct.a85* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.a85*, %struct.a85** %4, align 8
  %46 = getelementptr inbounds %struct.a85, %struct.a85* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fz_write_byte(i32* %44, i32 %47, i32 122)
  %49 = load %struct.a85*, %struct.a85** %4, align 8
  %50 = getelementptr inbounds %struct.a85, %struct.a85* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %98

53:                                               ; preds = %38
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.a85*, %struct.a85** %4, align 8
  %56 = getelementptr inbounds %struct.a85, %struct.a85* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = urem i32 %58, 85
  %60 = add i32 %59, 33
  %61 = call i32 @fz_write_byte(i32* %54, i32 %57, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load %struct.a85*, %struct.a85** %4, align 8
  %64 = getelementptr inbounds %struct.a85, %struct.a85* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = urem i32 %66, 85
  %68 = add i32 %67, 33
  %69 = call i32 @fz_write_byte(i32* %62, i32 %65, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.a85*, %struct.a85** %4, align 8
  %72 = getelementptr inbounds %struct.a85, %struct.a85* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = urem i32 %74, 85
  %76 = add i32 %75, 33
  %77 = call i32 @fz_write_byte(i32* %70, i32 %73, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load %struct.a85*, %struct.a85** %4, align 8
  %80 = getelementptr inbounds %struct.a85, %struct.a85* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = urem i32 %82, 85
  %84 = add i32 %83, 33
  %85 = call i32 @fz_write_byte(i32* %78, i32 %81, i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.a85*, %struct.a85** %4, align 8
  %88 = getelementptr inbounds %struct.a85, %struct.a85* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = urem i32 %90, 85
  %92 = add i32 %91, 33
  %93 = call i32 @fz_write_byte(i32* %86, i32 %89, i32 %92)
  %94 = load %struct.a85*, %struct.a85** %4, align 8
  %95 = getelementptr inbounds %struct.a85, %struct.a85* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 5
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %53, %43
  br label %204

99:                                               ; preds = %33
  %100 = load %struct.a85*, %struct.a85** %4, align 8
  %101 = getelementptr inbounds %struct.a85, %struct.a85* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %141

104:                                              ; preds = %99
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.a85*, %struct.a85** %4, align 8
  %107 = getelementptr inbounds %struct.a85, %struct.a85* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = urem i32 %109, 85
  %111 = add i32 %110, 33
  %112 = call i32 @fz_write_byte(i32* %105, i32 %108, i32 %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load %struct.a85*, %struct.a85** %4, align 8
  %115 = getelementptr inbounds %struct.a85, %struct.a85* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = urem i32 %117, 85
  %119 = add i32 %118, 33
  %120 = call i32 @fz_write_byte(i32* %113, i32 %116, i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = load %struct.a85*, %struct.a85** %4, align 8
  %123 = getelementptr inbounds %struct.a85, %struct.a85* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = urem i32 %125, 85
  %127 = add i32 %126, 33
  %128 = call i32 @fz_write_byte(i32* %121, i32 %124, i32 %127)
  %129 = load i32*, i32** %3, align 8
  %130 = load %struct.a85*, %struct.a85** %4, align 8
  %131 = getelementptr inbounds %struct.a85, %struct.a85* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = urem i32 %133, 85
  %135 = add i32 %134, 33
  %136 = call i32 @fz_write_byte(i32* %129, i32 %132, i32 %135)
  %137 = load %struct.a85*, %struct.a85** %4, align 8
  %138 = getelementptr inbounds %struct.a85, %struct.a85* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %138, align 4
  br label %203

141:                                              ; preds = %99
  %142 = load %struct.a85*, %struct.a85** %4, align 8
  %143 = getelementptr inbounds %struct.a85, %struct.a85* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %175

146:                                              ; preds = %141
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.a85*, %struct.a85** %4, align 8
  %149 = getelementptr inbounds %struct.a85, %struct.a85* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %7, align 4
  %152 = urem i32 %151, 85
  %153 = add i32 %152, 33
  %154 = call i32 @fz_write_byte(i32* %147, i32 %150, i32 %153)
  %155 = load i32*, i32** %3, align 8
  %156 = load %struct.a85*, %struct.a85** %4, align 8
  %157 = getelementptr inbounds %struct.a85, %struct.a85* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = urem i32 %159, 85
  %161 = add i32 %160, 33
  %162 = call i32 @fz_write_byte(i32* %155, i32 %158, i32 %161)
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.a85*, %struct.a85** %4, align 8
  %165 = getelementptr inbounds %struct.a85, %struct.a85* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %9, align 4
  %168 = urem i32 %167, 85
  %169 = add i32 %168, 33
  %170 = call i32 @fz_write_byte(i32* %163, i32 %166, i32 %169)
  %171 = load %struct.a85*, %struct.a85** %4, align 8
  %172 = getelementptr inbounds %struct.a85, %struct.a85* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 3
  store i32 %174, i32* %172, align 4
  br label %202

175:                                              ; preds = %141
  %176 = load %struct.a85*, %struct.a85** %4, align 8
  %177 = getelementptr inbounds %struct.a85, %struct.a85* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %201

180:                                              ; preds = %175
  %181 = load i32*, i32** %3, align 8
  %182 = load %struct.a85*, %struct.a85** %4, align 8
  %183 = getelementptr inbounds %struct.a85, %struct.a85* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %8, align 4
  %186 = urem i32 %185, 85
  %187 = add i32 %186, 33
  %188 = call i32 @fz_write_byte(i32* %181, i32 %184, i32 %187)
  %189 = load i32*, i32** %3, align 8
  %190 = load %struct.a85*, %struct.a85** %4, align 8
  %191 = getelementptr inbounds %struct.a85, %struct.a85* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = urem i32 %193, 85
  %195 = add i32 %194, 33
  %196 = call i32 @fz_write_byte(i32* %189, i32 %192, i32 %195)
  %197 = load %struct.a85*, %struct.a85** %4, align 8
  %198 = getelementptr inbounds %struct.a85, %struct.a85* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %180, %175
  br label %202

202:                                              ; preds = %201, %146
  br label %203

203:                                              ; preds = %202, %104
  br label %204

204:                                              ; preds = %203, %98
  %205 = load %struct.a85*, %struct.a85** %4, align 8
  %206 = getelementptr inbounds %struct.a85, %struct.a85* %205, i32 0, i32 0
  store i32 0, i32* %206, align 4
  %207 = load %struct.a85*, %struct.a85** %4, align 8
  %208 = getelementptr inbounds %struct.a85, %struct.a85* %207, i32 0, i32 2
  store i32 0, i32* %208, align 4
  ret void
}

declare dso_local i32 @fz_write_byte(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
