; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_shrink_box.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_shrink_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram = type { i32 }
%struct.box = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.histogram*, %struct.box*)* @shrink_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shrink_box(%struct.histogram* %0, %struct.box* %1) #0 {
  %3 = alloca %struct.histogram*, align 8
  %4 = alloca %struct.box*, align 8
  %5 = alloca i32, align 4
  store %struct.histogram* %0, %struct.histogram** %3, align 8
  store %struct.box* %1, %struct.box** %4, align 8
  %6 = load %struct.box*, %struct.box** %4, align 8
  %7 = getelementptr inbounds %struct.box, %struct.box* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.box*, %struct.box** %4, align 8
  %12 = getelementptr inbounds %struct.box, %struct.box* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.histogram*, %struct.histogram** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.box*, %struct.box** %4, align 8
  %20 = getelementptr inbounds %struct.box, %struct.box* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.box*, %struct.box** %4, align 8
  %23 = getelementptr inbounds %struct.box, %struct.box* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.box*, %struct.box** %4, align 8
  %26 = getelementptr inbounds %struct.box, %struct.box* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.box*, %struct.box** %4, align 8
  %29 = getelementptr inbounds %struct.box, %struct.box* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @histogram_count(%struct.histogram* %16, i32 %17, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.box*, %struct.box** %4, align 8
  %36 = getelementptr inbounds %struct.box, %struct.box* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %33, %9
  %42 = load %struct.box*, %struct.box** %4, align 8
  %43 = getelementptr inbounds %struct.box, %struct.box* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %74, %41
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.box*, %struct.box** %4, align 8
  %48 = getelementptr inbounds %struct.box, %struct.box* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.histogram*, %struct.histogram** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.box*, %struct.box** %4, align 8
  %56 = getelementptr inbounds %struct.box, %struct.box* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.box*, %struct.box** %4, align 8
  %59 = getelementptr inbounds %struct.box, %struct.box* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.box*, %struct.box** %4, align 8
  %62 = getelementptr inbounds %struct.box, %struct.box* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.box*, %struct.box** %4, align 8
  %65 = getelementptr inbounds %struct.box, %struct.box* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @histogram_count(%struct.histogram* %52, i32 %53, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.box*, %struct.box** %4, align 8
  %72 = getelementptr inbounds %struct.box, %struct.box* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %45

77:                                               ; preds = %69, %45
  %78 = load %struct.box*, %struct.box** %4, align 8
  %79 = getelementptr inbounds %struct.box, %struct.box* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %110, %77
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.box*, %struct.box** %4, align 8
  %84 = getelementptr inbounds %struct.box, %struct.box* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %81
  %88 = load %struct.histogram*, %struct.histogram** %3, align 8
  %89 = load %struct.box*, %struct.box** %4, align 8
  %90 = getelementptr inbounds %struct.box, %struct.box* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.box*, %struct.box** %4, align 8
  %93 = getelementptr inbounds %struct.box, %struct.box* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.box*, %struct.box** %4, align 8
  %98 = getelementptr inbounds %struct.box, %struct.box* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.box*, %struct.box** %4, align 8
  %101 = getelementptr inbounds %struct.box, %struct.box* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @histogram_count(%struct.histogram* %88, i32 %91, i32 %94, i32 %95, i32 %96, i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %87
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.box*, %struct.box** %4, align 8
  %108 = getelementptr inbounds %struct.box, %struct.box* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %81

113:                                              ; preds = %105, %81
  %114 = load %struct.box*, %struct.box** %4, align 8
  %115 = getelementptr inbounds %struct.box, %struct.box* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %146, %113
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.box*, %struct.box** %4, align 8
  %120 = getelementptr inbounds %struct.box, %struct.box* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %117
  %124 = load %struct.histogram*, %struct.histogram** %3, align 8
  %125 = load %struct.box*, %struct.box** %4, align 8
  %126 = getelementptr inbounds %struct.box, %struct.box* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.box*, %struct.box** %4, align 8
  %129 = getelementptr inbounds %struct.box, %struct.box* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.box*, %struct.box** %4, align 8
  %134 = getelementptr inbounds %struct.box, %struct.box* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.box*, %struct.box** %4, align 8
  %137 = getelementptr inbounds %struct.box, %struct.box* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @histogram_count(%struct.histogram* %124, i32 %127, i32 %130, i32 %131, i32 %132, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %123
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.box*, %struct.box** %4, align 8
  %144 = getelementptr inbounds %struct.box, %struct.box* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %149

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %5, align 4
  br label %117

149:                                              ; preds = %141, %117
  %150 = load %struct.box*, %struct.box** %4, align 8
  %151 = getelementptr inbounds %struct.box, %struct.box* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %182, %149
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.box*, %struct.box** %4, align 8
  %156 = getelementptr inbounds %struct.box, %struct.box* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = icmp sle i32 %154, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %153
  %160 = load %struct.histogram*, %struct.histogram** %3, align 8
  %161 = load %struct.box*, %struct.box** %4, align 8
  %162 = getelementptr inbounds %struct.box, %struct.box* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.box*, %struct.box** %4, align 8
  %165 = getelementptr inbounds %struct.box, %struct.box* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.box*, %struct.box** %4, align 8
  %168 = getelementptr inbounds %struct.box, %struct.box* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.box*, %struct.box** %4, align 8
  %171 = getelementptr inbounds %struct.box, %struct.box* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i64 @histogram_count(%struct.histogram* %160, i32 %163, i32 %166, i32 %169, i32 %172, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %159
  %178 = load i32, i32* %5, align 4
  %179 = load %struct.box*, %struct.box** %4, align 8
  %180 = getelementptr inbounds %struct.box, %struct.box* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  br label %185

181:                                              ; preds = %159
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %153

185:                                              ; preds = %177, %153
  %186 = load %struct.box*, %struct.box** %4, align 8
  %187 = getelementptr inbounds %struct.box, %struct.box* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %218, %185
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.box*, %struct.box** %4, align 8
  %192 = getelementptr inbounds %struct.box, %struct.box* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %190, %193
  br i1 %194, label %195, label %221

195:                                              ; preds = %189
  %196 = load %struct.histogram*, %struct.histogram** %3, align 8
  %197 = load %struct.box*, %struct.box** %4, align 8
  %198 = getelementptr inbounds %struct.box, %struct.box* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.box*, %struct.box** %4, align 8
  %201 = getelementptr inbounds %struct.box, %struct.box* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.box*, %struct.box** %4, align 8
  %204 = getelementptr inbounds %struct.box, %struct.box* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.box*, %struct.box** %4, align 8
  %207 = getelementptr inbounds %struct.box, %struct.box* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i64 @histogram_count(%struct.histogram* %196, i32 %199, i32 %202, i32 %205, i32 %208, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %195
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.box*, %struct.box** %4, align 8
  %216 = getelementptr inbounds %struct.box, %struct.box* %215, i32 0, i32 5
  store i32 %214, i32* %216, align 4
  br label %221

217:                                              ; preds = %195
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %5, align 4
  br label %189

221:                                              ; preds = %213, %189
  %222 = load %struct.histogram*, %struct.histogram** %3, align 8
  %223 = load %struct.box*, %struct.box** %4, align 8
  %224 = call i32 @box_count(%struct.histogram* %222, %struct.box* %223)
  %225 = load %struct.box*, %struct.box** %4, align 8
  %226 = getelementptr inbounds %struct.box, %struct.box* %225, i32 0, i32 7
  store i32 %224, i32* %226, align 4
  %227 = load %struct.box*, %struct.box** %4, align 8
  %228 = call i32 @box_score(%struct.box* %227)
  %229 = load %struct.box*, %struct.box** %4, align 8
  %230 = getelementptr inbounds %struct.box, %struct.box* %229, i32 0, i32 6
  store i32 %228, i32* %230, align 4
  ret void
}

declare dso_local i64 @histogram_count(%struct.histogram*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @box_count(%struct.histogram*, %struct.box*) #1

declare dso_local i32 @box_score(%struct.box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
