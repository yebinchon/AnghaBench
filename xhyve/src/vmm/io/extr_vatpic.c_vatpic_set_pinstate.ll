; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_set_pinstate.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vatpic.c_vatpic_set_pinstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32*, %struct.atpic* }
%struct.atpic = type { i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"vatpic_set_pinstate: invalid pin number %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"atpic pin%d: bad acnt %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"atpic pin%d: asserted\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"atpic pin%d: deasserted\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"atpic pin%d: %s, ignored, acnt %d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"asserted\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"deasserted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vatpic*, i32, i32)* @vatpic_set_pinstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpic_set_pinstate(%struct.vatpic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vatpic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atpic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 16
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %24 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %23, i32 0, i32 1
  %25 = load %struct.atpic*, %struct.atpic** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.atpic, %struct.atpic* %25, i64 %28
  store %struct.atpic* %29, %struct.atpic** %7, align 8
  %30 = load %struct.atpic*, %struct.atpic** %7, align 8
  %31 = getelementptr inbounds %struct.atpic, %struct.atpic* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %16
  %41 = load %struct.atpic*, %struct.atpic** %7, align 8
  %42 = getelementptr inbounds %struct.atpic, %struct.atpic* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %60

50:                                               ; preds = %16
  %51 = load %struct.atpic*, %struct.atpic** %7, align 8
  %52 = getelementptr inbounds %struct.atpic, %struct.atpic* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 7
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %40
  %61 = load %struct.atpic*, %struct.atpic** %7, align 8
  %62 = getelementptr inbounds %struct.atpic, %struct.atpic* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @VATPIC_CTR2(%struct.vatpic* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %60
  %77 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %78 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 7
  %87 = shl i32 1, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %102, label %96

96:                                               ; preds = %93, %76
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %113

102:                                              ; preds = %99, %93
  %103 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @VATPIC_CTR1(%struct.vatpic* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 7
  %108 = shl i32 1, %107
  %109 = load %struct.atpic*, %struct.atpic** %7, align 8
  %110 = getelementptr inbounds %struct.atpic, %struct.atpic* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %145

113:                                              ; preds = %99, %96
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @VATPIC_CTR1(%struct.vatpic* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 7
  %128 = shl i32 1, %127
  %129 = xor i32 %128, -1
  %130 = load %struct.atpic*, %struct.atpic** %7, align 8
  %131 = getelementptr inbounds %struct.atpic, %struct.atpic* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %125, %119
  br label %144

135:                                              ; preds = %116, %113
  %136 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @VATPIC_CTR3(%struct.vatpic* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %137, i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %134
  br label %145

145:                                              ; preds = %144, %102
  %146 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %147 = call i32 @vatpic_notify_intr(%struct.vatpic* %146)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VATPIC_CTR2(%struct.vatpic*, i8*, i32, i32) #1

declare dso_local i32 @VATPIC_CTR1(%struct.vatpic*, i8*, i32) #1

declare dso_local i32 @VATPIC_CTR3(%struct.vatpic*, i8*, i32, i8*, i32) #1

declare dso_local i32 @vatpic_notify_intr(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
