; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_buildshifts.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_buildshifts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i32 }
%struct.state = type { i32, %struct.config* }
%struct.config = type { i64, i64, i32, %struct.TYPE_2__*, %struct.config* }
%struct.TYPE_2__ = type { i64, %struct.symbol** }
%struct.symbol = type { i64, i32, %struct.symbol** }

@INCOMPLETE = common dso_local global i64 0, align 8
@COMPLETE = common dso_local global i64 0, align 8
@MULTITERMINAL = common dso_local global i64 0, align 8
@SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildshifts(%struct.lemon* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.lemon*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.config*, align 8
  %7 = alloca %struct.config*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.state*, align 8
  %11 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  %12 = load %struct.state*, %struct.state** %4, align 8
  %13 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 1
  %14 = load %struct.config*, %struct.config** %13, align 8
  store %struct.config* %14, %struct.config** %5, align 8
  br label %15

15:                                               ; preds = %22, %2
  %16 = load %struct.config*, %struct.config** %5, align 8
  %17 = icmp ne %struct.config* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i64, i64* @INCOMPLETE, align 8
  %20 = load %struct.config*, %struct.config** %5, align 8
  %21 = getelementptr inbounds %struct.config, %struct.config* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.config*, %struct.config** %5, align 8
  %24 = getelementptr inbounds %struct.config, %struct.config* %23, i32 0, i32 4
  %25 = load %struct.config*, %struct.config** %24, align 8
  store %struct.config* %25, %struct.config** %5, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.state*, %struct.state** %4, align 8
  %28 = getelementptr inbounds %struct.state, %struct.state* %27, i32 0, i32 1
  %29 = load %struct.config*, %struct.config** %28, align 8
  store %struct.config* %29, %struct.config** %5, align 8
  br label %30

30:                                               ; preds = %164, %26
  %31 = load %struct.config*, %struct.config** %5, align 8
  %32 = icmp ne %struct.config* %31, null
  br i1 %32, label %33, label %168

33:                                               ; preds = %30
  %34 = load %struct.config*, %struct.config** %5, align 8
  %35 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @COMPLETE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %164

40:                                               ; preds = %33
  %41 = load %struct.config*, %struct.config** %5, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.config*, %struct.config** %5, align 8
  %45 = getelementptr inbounds %struct.config, %struct.config* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %164

51:                                               ; preds = %40
  %52 = call i32 (...) @Configlist_reset()
  %53 = load %struct.config*, %struct.config** %5, align 8
  %54 = getelementptr inbounds %struct.config, %struct.config* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load %struct.symbol**, %struct.symbol*** %56, align 8
  %58 = load %struct.config*, %struct.config** %5, align 8
  %59 = getelementptr inbounds %struct.config, %struct.config* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.symbol*, %struct.symbol** %57, i64 %60
  %62 = load %struct.symbol*, %struct.symbol** %61, align 8
  store %struct.symbol* %62, %struct.symbol** %8, align 8
  %63 = load %struct.config*, %struct.config** %5, align 8
  store %struct.config* %63, %struct.config** %6, align 8
  br label %64

64:                                               ; preds = %118, %51
  %65 = load %struct.config*, %struct.config** %6, align 8
  %66 = icmp ne %struct.config* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %64
  %68 = load %struct.config*, %struct.config** %6, align 8
  %69 = getelementptr inbounds %struct.config, %struct.config* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @COMPLETE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %118

74:                                               ; preds = %67
  %75 = load %struct.config*, %struct.config** %6, align 8
  %76 = getelementptr inbounds %struct.config, %struct.config* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.config*, %struct.config** %6, align 8
  %79 = getelementptr inbounds %struct.config, %struct.config* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp uge i64 %77, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %118

85:                                               ; preds = %74
  %86 = load %struct.config*, %struct.config** %6, align 8
  %87 = getelementptr inbounds %struct.config, %struct.config* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.symbol**, %struct.symbol*** %89, align 8
  %91 = load %struct.config*, %struct.config** %6, align 8
  %92 = getelementptr inbounds %struct.config, %struct.config* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.symbol*, %struct.symbol** %90, i64 %93
  %95 = load %struct.symbol*, %struct.symbol** %94, align 8
  store %struct.symbol* %95, %struct.symbol** %9, align 8
  %96 = load %struct.symbol*, %struct.symbol** %9, align 8
  %97 = load %struct.symbol*, %struct.symbol** %8, align 8
  %98 = call i32 @same_symbol(%struct.symbol* %96, %struct.symbol* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %85
  br label %118

101:                                              ; preds = %85
  %102 = load i64, i64* @COMPLETE, align 8
  %103 = load %struct.config*, %struct.config** %6, align 8
  %104 = getelementptr inbounds %struct.config, %struct.config* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.config*, %struct.config** %6, align 8
  %106 = getelementptr inbounds %struct.config, %struct.config* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load %struct.config*, %struct.config** %6, align 8
  %109 = getelementptr inbounds %struct.config, %struct.config* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call %struct.config* @Configlist_addbasis(%struct.TYPE_2__* %107, i32 %112)
  store %struct.config* %113, %struct.config** %7, align 8
  %114 = load %struct.config*, %struct.config** %7, align 8
  %115 = getelementptr inbounds %struct.config, %struct.config* %114, i32 0, i32 2
  %116 = load %struct.config*, %struct.config** %6, align 8
  %117 = call i32 @Plink_add(i32* %115, %struct.config* %116)
  br label %118

118:                                              ; preds = %101, %100, %84, %73
  %119 = load %struct.config*, %struct.config** %6, align 8
  %120 = getelementptr inbounds %struct.config, %struct.config* %119, i32 0, i32 4
  %121 = load %struct.config*, %struct.config** %120, align 8
  store %struct.config* %121, %struct.config** %6, align 8
  br label %64

122:                                              ; preds = %64
  %123 = load %struct.lemon*, %struct.lemon** %3, align 8
  %124 = call %struct.state* @getstate(%struct.lemon* %123)
  store %struct.state* %124, %struct.state** %10, align 8
  %125 = load %struct.symbol*, %struct.symbol** %8, align 8
  %126 = getelementptr inbounds %struct.symbol, %struct.symbol* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MULTITERMINAL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %151, %130
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.symbol*, %struct.symbol** %8, align 8
  %134 = getelementptr inbounds %struct.symbol, %struct.symbol* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.state*, %struct.state** %4, align 8
  %139 = getelementptr inbounds %struct.state, %struct.state* %138, i32 0, i32 0
  %140 = load i32, i32* @SHIFT, align 4
  %141 = load %struct.symbol*, %struct.symbol** %8, align 8
  %142 = getelementptr inbounds %struct.symbol, %struct.symbol* %141, i32 0, i32 2
  %143 = load %struct.symbol**, %struct.symbol*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.symbol*, %struct.symbol** %143, i64 %145
  %147 = load %struct.symbol*, %struct.symbol** %146, align 8
  %148 = load %struct.state*, %struct.state** %10, align 8
  %149 = bitcast %struct.state* %148 to i8*
  %150 = call i32 @Action_add(i32* %139, i32 %140, %struct.symbol* %147, i8* %149)
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %131

154:                                              ; preds = %131
  br label %163

155:                                              ; preds = %122
  %156 = load %struct.state*, %struct.state** %4, align 8
  %157 = getelementptr inbounds %struct.state, %struct.state* %156, i32 0, i32 0
  %158 = load i32, i32* @SHIFT, align 4
  %159 = load %struct.symbol*, %struct.symbol** %8, align 8
  %160 = load %struct.state*, %struct.state** %10, align 8
  %161 = bitcast %struct.state* %160 to i8*
  %162 = call i32 @Action_add(i32* %157, i32 %158, %struct.symbol* %159, i8* %161)
  br label %163

163:                                              ; preds = %155, %154
  br label %164

164:                                              ; preds = %163, %50, %39
  %165 = load %struct.config*, %struct.config** %5, align 8
  %166 = getelementptr inbounds %struct.config, %struct.config* %165, i32 0, i32 4
  %167 = load %struct.config*, %struct.config** %166, align 8
  store %struct.config* %167, %struct.config** %5, align 8
  br label %30

168:                                              ; preds = %30
  ret void
}

declare dso_local i32 @Configlist_reset(...) #1

declare dso_local i32 @same_symbol(%struct.symbol*, %struct.symbol*) #1

declare dso_local %struct.config* @Configlist_addbasis(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @Plink_add(i32*, %struct.config*) #1

declare dso_local %struct.state* @getstate(%struct.lemon*) #1

declare dso_local i32 @Action_add(i32*, i32, %struct.symbol*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
