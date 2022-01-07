; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_prefixes.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_prefixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vie = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CPU_MODE_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*, i32, i32)* @decode_prefixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_prefixes(%struct.vie* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vie* %0, %struct.vie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %3, %52
  %10 = load %struct.vie*, %struct.vie** %5, align 8
  %11 = call i64 @vie_peek(%struct.vie* %10, i32* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %170

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 102
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.vie*, %struct.vie** %5, align 8
  %19 = getelementptr inbounds %struct.vie, %struct.vie* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %52

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 103
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.vie*, %struct.vie** %5, align 8
  %25 = getelementptr inbounds %struct.vie, %struct.vie* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %51

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 243
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.vie*, %struct.vie** %5, align 8
  %31 = getelementptr inbounds %struct.vie, %struct.vie* %30, i32 0, i32 2
  store i32 1, i32* %31, align 4
  br label %50

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 242
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.vie*, %struct.vie** %5, align 8
  %37 = getelementptr inbounds %struct.vie, %struct.vie* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.vie*, %struct.vie** %5, align 8
  %41 = getelementptr inbounds %struct.vie, %struct.vie* %40, i32 0, i32 12
  %42 = call i64 @segment_override(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.vie*, %struct.vie** %5, align 8
  %46 = getelementptr inbounds %struct.vie, %struct.vie* %45, i32 0, i32 4
  store i32 1, i32* %46, align 4
  br label %48

47:                                               ; preds = %38
  br label %55

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %23
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.vie*, %struct.vie** %5, align 8
  %54 = call i32 @vie_advance(%struct.vie* %53)
  br label %9

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CPU_MODE_64BIT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 64
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 79
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load %struct.vie*, %struct.vie** %5, align 8
  %67 = getelementptr inbounds %struct.vie, %struct.vie* %66, i32 0, i32 5
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.vie*, %struct.vie** %5, align 8
  %74 = getelementptr inbounds %struct.vie, %struct.vie* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.vie*, %struct.vie** %5, align 8
  %81 = getelementptr inbounds %struct.vie, %struct.vie* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load %struct.vie*, %struct.vie** %5, align 8
  %88 = getelementptr inbounds %struct.vie, %struct.vie* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load %struct.vie*, %struct.vie** %5, align 8
  %95 = getelementptr inbounds %struct.vie, %struct.vie* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vie*, %struct.vie** %5, align 8
  %97 = call i32 @vie_advance(%struct.vie* %96)
  br label %98

98:                                               ; preds = %65, %62, %59, %55
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @CPU_MODE_64BIT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %98
  %103 = load %struct.vie*, %struct.vie** %5, align 8
  %104 = getelementptr inbounds %struct.vie, %struct.vie* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 4, i32 8
  %109 = load %struct.vie*, %struct.vie** %5, align 8
  %110 = getelementptr inbounds %struct.vie, %struct.vie* %109, i32 0, i32 10
  store i32 %108, i32* %110, align 4
  %111 = load %struct.vie*, %struct.vie** %5, align 8
  %112 = getelementptr inbounds %struct.vie, %struct.vie* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load %struct.vie*, %struct.vie** %5, align 8
  %117 = getelementptr inbounds %struct.vie, %struct.vie* %116, i32 0, i32 11
  store i32 8, i32* %117, align 4
  br label %130

118:                                              ; preds = %102
  %119 = load %struct.vie*, %struct.vie** %5, align 8
  %120 = getelementptr inbounds %struct.vie, %struct.vie* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.vie*, %struct.vie** %5, align 8
  %125 = getelementptr inbounds %struct.vie, %struct.vie* %124, i32 0, i32 11
  store i32 2, i32* %125, align 4
  br label %129

126:                                              ; preds = %118
  %127 = load %struct.vie*, %struct.vie** %5, align 8
  %128 = getelementptr inbounds %struct.vie, %struct.vie* %127, i32 0, i32 11
  store i32 4, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %115
  br label %169

131:                                              ; preds = %98
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load %struct.vie*, %struct.vie** %5, align 8
  %136 = getelementptr inbounds %struct.vie, %struct.vie* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 2, i32 4
  %141 = load %struct.vie*, %struct.vie** %5, align 8
  %142 = getelementptr inbounds %struct.vie, %struct.vie* %141, i32 0, i32 10
  store i32 %140, i32* %142, align 4
  %143 = load %struct.vie*, %struct.vie** %5, align 8
  %144 = getelementptr inbounds %struct.vie, %struct.vie* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 2, i32 4
  %149 = load %struct.vie*, %struct.vie** %5, align 8
  %150 = getelementptr inbounds %struct.vie, %struct.vie* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 4
  br label %168

151:                                              ; preds = %131
  %152 = load %struct.vie*, %struct.vie** %5, align 8
  %153 = getelementptr inbounds %struct.vie, %struct.vie* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 4, i32 2
  %158 = load %struct.vie*, %struct.vie** %5, align 8
  %159 = getelementptr inbounds %struct.vie, %struct.vie* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 4
  %160 = load %struct.vie*, %struct.vie** %5, align 8
  %161 = getelementptr inbounds %struct.vie, %struct.vie* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 4, i32 2
  %166 = load %struct.vie*, %struct.vie** %5, align 8
  %167 = getelementptr inbounds %struct.vie, %struct.vie* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %151, %134
  br label %169

169:                                              ; preds = %168, %130
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %13
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @vie_peek(%struct.vie*, i32*) #1

declare dso_local i64 @segment_override(i32, i32*) #1

declare dso_local i32 @vie_advance(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
