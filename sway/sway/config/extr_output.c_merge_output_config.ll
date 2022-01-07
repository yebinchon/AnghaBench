; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_merge_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_merge_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_config = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i8*, i8*, i8* }

@WL_OUTPUT_SUBPIXEL_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_output_config(%struct.output_config* %0, %struct.output_config* %1) #0 {
  %3 = alloca %struct.output_config*, align 8
  %4 = alloca %struct.output_config*, align 8
  store %struct.output_config* %0, %struct.output_config** %3, align 8
  store %struct.output_config* %1, %struct.output_config** %4, align 8
  %5 = load %struct.output_config*, %struct.output_config** %4, align 8
  %6 = getelementptr inbounds %struct.output_config, %struct.output_config* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.output_config*, %struct.output_config** %4, align 8
  %11 = getelementptr inbounds %struct.output_config, %struct.output_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.output_config*, %struct.output_config** %3, align 8
  %14 = getelementptr inbounds %struct.output_config, %struct.output_config* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.output_config*, %struct.output_config** %4, align 8
  %17 = getelementptr inbounds %struct.output_config, %struct.output_config* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.output_config*, %struct.output_config** %4, align 8
  %22 = getelementptr inbounds %struct.output_config, %struct.output_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.output_config*, %struct.output_config** %3, align 8
  %25 = getelementptr inbounds %struct.output_config, %struct.output_config* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.output_config*, %struct.output_config** %4, align 8
  %28 = getelementptr inbounds %struct.output_config, %struct.output_config* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.output_config*, %struct.output_config** %4, align 8
  %33 = getelementptr inbounds %struct.output_config, %struct.output_config* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.output_config*, %struct.output_config** %3, align 8
  %36 = getelementptr inbounds %struct.output_config, %struct.output_config* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.output_config*, %struct.output_config** %4, align 8
  %39 = getelementptr inbounds %struct.output_config, %struct.output_config* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.output_config*, %struct.output_config** %4, align 8
  %44 = getelementptr inbounds %struct.output_config, %struct.output_config* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.output_config*, %struct.output_config** %3, align 8
  %47 = getelementptr inbounds %struct.output_config, %struct.output_config* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.output_config*, %struct.output_config** %4, align 8
  %50 = getelementptr inbounds %struct.output_config, %struct.output_config* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.output_config*, %struct.output_config** %4, align 8
  %55 = getelementptr inbounds %struct.output_config, %struct.output_config* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.output_config*, %struct.output_config** %3, align 8
  %58 = getelementptr inbounds %struct.output_config, %struct.output_config* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.output_config*, %struct.output_config** %4, align 8
  %61 = getelementptr inbounds %struct.output_config, %struct.output_config* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.output_config*, %struct.output_config** %4, align 8
  %66 = getelementptr inbounds %struct.output_config, %struct.output_config* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.output_config*, %struct.output_config** %3, align 8
  %69 = getelementptr inbounds %struct.output_config, %struct.output_config* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.output_config*, %struct.output_config** %4, align 8
  %72 = getelementptr inbounds %struct.output_config, %struct.output_config* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WL_OUTPUT_SUBPIXEL_UNKNOWN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.output_config*, %struct.output_config** %4, align 8
  %78 = getelementptr inbounds %struct.output_config, %struct.output_config* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.output_config*, %struct.output_config** %3, align 8
  %81 = getelementptr inbounds %struct.output_config, %struct.output_config* %80, i32 0, i32 6
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.output_config*, %struct.output_config** %4, align 8
  %84 = getelementptr inbounds %struct.output_config, %struct.output_config* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.output_config*, %struct.output_config** %4, align 8
  %89 = getelementptr inbounds %struct.output_config, %struct.output_config* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.output_config*, %struct.output_config** %3, align 8
  %92 = getelementptr inbounds %struct.output_config, %struct.output_config* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.output_config*, %struct.output_config** %4, align 8
  %95 = getelementptr inbounds %struct.output_config, %struct.output_config* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.output_config*, %struct.output_config** %4, align 8
  %100 = getelementptr inbounds %struct.output_config, %struct.output_config* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.output_config*, %struct.output_config** %3, align 8
  %103 = getelementptr inbounds %struct.output_config, %struct.output_config* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load %struct.output_config*, %struct.output_config** %4, align 8
  %106 = getelementptr inbounds %struct.output_config, %struct.output_config* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.output_config*, %struct.output_config** %4, align 8
  %111 = getelementptr inbounds %struct.output_config, %struct.output_config* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.output_config*, %struct.output_config** %3, align 8
  %114 = getelementptr inbounds %struct.output_config, %struct.output_config* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.output_config*, %struct.output_config** %4, align 8
  %117 = getelementptr inbounds %struct.output_config, %struct.output_config* %116, i32 0, i32 13
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.output_config*, %struct.output_config** %3, align 8
  %122 = getelementptr inbounds %struct.output_config, %struct.output_config* %121, i32 0, i32 13
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load %struct.output_config*, %struct.output_config** %4, align 8
  %126 = getelementptr inbounds %struct.output_config, %struct.output_config* %125, i32 0, i32 13
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @strdup(i8* %127)
  %129 = load %struct.output_config*, %struct.output_config** %3, align 8
  %130 = getelementptr inbounds %struct.output_config, %struct.output_config* %129, i32 0, i32 13
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %120, %115
  %132 = load %struct.output_config*, %struct.output_config** %4, align 8
  %133 = getelementptr inbounds %struct.output_config, %struct.output_config* %132, i32 0, i32 12
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.output_config*, %struct.output_config** %3, align 8
  %138 = getelementptr inbounds %struct.output_config, %struct.output_config* %137, i32 0, i32 12
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load %struct.output_config*, %struct.output_config** %4, align 8
  %142 = getelementptr inbounds %struct.output_config, %struct.output_config* %141, i32 0, i32 12
  %143 = load i8*, i8** %142, align 8
  %144 = call i8* @strdup(i8* %143)
  %145 = load %struct.output_config*, %struct.output_config** %3, align 8
  %146 = getelementptr inbounds %struct.output_config, %struct.output_config* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %136, %131
  %148 = load %struct.output_config*, %struct.output_config** %4, align 8
  %149 = getelementptr inbounds %struct.output_config, %struct.output_config* %148, i32 0, i32 11
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.output_config*, %struct.output_config** %3, align 8
  %154 = getelementptr inbounds %struct.output_config, %struct.output_config* %153, i32 0, i32 11
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @free(i8* %155)
  %157 = load %struct.output_config*, %struct.output_config** %4, align 8
  %158 = getelementptr inbounds %struct.output_config, %struct.output_config* %157, i32 0, i32 11
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @strdup(i8* %159)
  %161 = load %struct.output_config*, %struct.output_config** %3, align 8
  %162 = getelementptr inbounds %struct.output_config, %struct.output_config* %161, i32 0, i32 11
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %152, %147
  %164 = load %struct.output_config*, %struct.output_config** %4, align 8
  %165 = getelementptr inbounds %struct.output_config, %struct.output_config* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.output_config*, %struct.output_config** %4, align 8
  %170 = getelementptr inbounds %struct.output_config, %struct.output_config* %169, i32 0, i32 10
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.output_config*, %struct.output_config** %3, align 8
  %173 = getelementptr inbounds %struct.output_config, %struct.output_config* %172, i32 0, i32 10
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %168, %163
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
