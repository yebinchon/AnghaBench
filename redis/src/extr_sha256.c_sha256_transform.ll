; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sha256.c_sha256_transform.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sha256.c_sha256_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@k = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_transform(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [64 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %27, %34
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %35, %42
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %43, %49
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %21
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %14, align 4
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %92, %59
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SIG1(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %70, 7
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %69, %74
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 15
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SIG0(i32 %80)
  %82 = add nsw i32 %75, %81
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %82, %87
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %63
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %60

95:                                               ; preds = %60
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %5, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %6, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %7, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %9, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 5
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %10, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %11, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 7
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %179, %95
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 64
  br i1 %138, label %139, label %182

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @EP1(i32 %141)
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @CH(i32 %144, i32 %145, i32 %146)
  %148 = add nsw i32 %143, %147
  %149 = load i32*, i32** @k, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %148, %153
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %154, %158
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @EP0(i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @MAJ(i32 %162, i32 %163, i32 %164)
  %166 = add nsw i32 %161, %165
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %5, align 4
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %139
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %13, align 4
  br label %136

182:                                              ; preds = %136
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %190
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %197
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %204
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %211
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 5
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %218
  store i32 %224, i32* %222, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, %225
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 7
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, %232
  store i32 %238, i32* %236, align 4
  ret void
}

declare dso_local i32 @SIG1(i32) #1

declare dso_local i32 @SIG0(i32) #1

declare dso_local i32 @EP1(i32) #1

declare dso_local i32 @CH(i32, i32, i32) #1

declare dso_local i32 @EP0(i32) #1

declare dso_local i32 @MAJ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
