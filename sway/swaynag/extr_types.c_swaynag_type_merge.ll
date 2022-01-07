; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_types.c_swaynag_type_merge.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_types.c_swaynag_type_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag_type = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaynag_type_merge(%struct.swaynag_type* %0, %struct.swaynag_type* %1) #0 {
  %3 = alloca %struct.swaynag_type*, align 8
  %4 = alloca %struct.swaynag_type*, align 8
  store %struct.swaynag_type* %0, %struct.swaynag_type** %3, align 8
  store %struct.swaynag_type* %1, %struct.swaynag_type** %4, align 8
  %5 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %6 = icmp ne %struct.swaynag_type* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %9 = icmp ne %struct.swaynag_type* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %189

11:                                               ; preds = %7
  %12 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %13 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %12, i32 0, i32 15
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %18 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %17, i32 0, i32 15
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @strdup(i8* %19)
  %21 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %22 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %21, i32 0, i32 15
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %25 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %24, i32 0, i32 14
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %30 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %29, i32 0, i32 14
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strdup(i8* %31)
  %33 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %34 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %33, i32 0, i32 14
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %37 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %42 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %45 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %48 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %53 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %56 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %59 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %64 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %67 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %70 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %75 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %78 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %81 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %86 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %89 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %92 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %97 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %100 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %103 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %108 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %111 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %114 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %119 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %122 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %125 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %130 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %133 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %136 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %141 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %144 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %147 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %152 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %155 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %154, i32 0, i32 10
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %158 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %163 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %166 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %165, i32 0, i32 11
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %156
  %168 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %169 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %174 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %177 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %176, i32 0, i32 12
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %180 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %181, -1
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.swaynag_type*, %struct.swaynag_type** %4, align 8
  %185 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.swaynag_type*, %struct.swaynag_type** %3, align 8
  %188 = getelementptr inbounds %struct.swaynag_type, %struct.swaynag_type* %187, i32 0, i32 13
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %10, %183, %178
  ret void
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
