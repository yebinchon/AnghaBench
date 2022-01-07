; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_closure.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i32, %struct.rule*, %struct.config* }
%struct.rule = type { i32, %struct.symbol**, %struct.rule*, i32 }
%struct.symbol = type { i64, i32, i64, i32, %struct.TYPE_2__**, i32, %struct.rule*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lemon = type { i32, i32, %struct.symbol* }

@currentend = common dso_local global i64 0, align 8
@current = common dso_local global %struct.config* null, align 8
@NONTERMINAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Nonterminal \22%s\22 has no rules.\00", align 1
@TERMINAL = common dso_local global i64 0, align 8
@MULTITERMINAL = common dso_local global i64 0, align 8
@LEMON_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Configlist_closure(%struct.lemon* %0) #0 {
  %2 = alloca %struct.lemon*, align 8
  %3 = alloca %struct.config*, align 8
  %4 = alloca %struct.config*, align 8
  %5 = alloca %struct.rule*, align 8
  %6 = alloca %struct.rule*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lemon* %0, %struct.lemon** %2, align 8
  %12 = load i64, i64* @currentend, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.config*, %struct.config** @current, align 8
  store %struct.config* %16, %struct.config** %3, align 8
  br label %17

17:                                               ; preds = %180, %1
  %18 = load %struct.config*, %struct.config** %3, align 8
  %19 = icmp ne %struct.config* %18, null
  br i1 %19, label %20, label %184

20:                                               ; preds = %17
  %21 = load %struct.config*, %struct.config** %3, align 8
  %22 = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 3
  %23 = load %struct.rule*, %struct.rule** %22, align 8
  store %struct.rule* %23, %struct.rule** %5, align 8
  %24 = load %struct.config*, %struct.config** %3, align 8
  %25 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rule*, %struct.rule** %5, align 8
  %29 = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %180

33:                                               ; preds = %20
  %34 = load %struct.rule*, %struct.rule** %5, align 8
  %35 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 1
  %36 = load %struct.symbol**, %struct.symbol*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.symbol*, %struct.symbol** %36, i64 %38
  %40 = load %struct.symbol*, %struct.symbol** %39, align 8
  store %struct.symbol* %40, %struct.symbol** %7, align 8
  %41 = load %struct.symbol*, %struct.symbol** %7, align 8
  %42 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NONTERMINAL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %179

46:                                               ; preds = %33
  %47 = load %struct.symbol*, %struct.symbol** %7, align 8
  %48 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 6
  %49 = load %struct.rule*, %struct.rule** %48, align 8
  %50 = icmp eq %struct.rule* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load %struct.symbol*, %struct.symbol** %7, align 8
  %53 = load %struct.lemon*, %struct.lemon** %2, align 8
  %54 = getelementptr inbounds %struct.lemon, %struct.lemon* %53, i32 0, i32 2
  %55 = load %struct.symbol*, %struct.symbol** %54, align 8
  %56 = icmp ne %struct.symbol* %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.lemon*, %struct.lemon** %2, align 8
  %59 = getelementptr inbounds %struct.lemon, %struct.lemon* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rule*, %struct.rule** %5, align 8
  %62 = getelementptr inbounds %struct.rule, %struct.rule* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.symbol*, %struct.symbol** %7, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ErrorMsg(i32 %60, i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.lemon*, %struct.lemon** %2, align 8
  %69 = getelementptr inbounds %struct.lemon, %struct.lemon* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %57, %51, %46
  %73 = load %struct.symbol*, %struct.symbol** %7, align 8
  %74 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 6
  %75 = load %struct.rule*, %struct.rule** %74, align 8
  store %struct.rule* %75, %struct.rule** %6, align 8
  br label %76

76:                                               ; preds = %174, %72
  %77 = load %struct.rule*, %struct.rule** %6, align 8
  %78 = icmp ne %struct.rule* %77, null
  br i1 %78, label %79, label %178

79:                                               ; preds = %76
  %80 = load %struct.rule*, %struct.rule** %6, align 8
  %81 = call %struct.config* @Configlist_add(%struct.rule* %80, i32 0)
  store %struct.config* %81, %struct.config** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %159, %79
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.rule*, %struct.rule** %5, align 8
  %87 = getelementptr inbounds %struct.rule, %struct.rule* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %162

90:                                               ; preds = %84
  %91 = load %struct.rule*, %struct.rule** %5, align 8
  %92 = getelementptr inbounds %struct.rule, %struct.rule* %91, i32 0, i32 1
  %93 = load %struct.symbol**, %struct.symbol*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.symbol*, %struct.symbol** %93, i64 %95
  %97 = load %struct.symbol*, %struct.symbol** %96, align 8
  store %struct.symbol* %97, %struct.symbol** %8, align 8
  %98 = load %struct.symbol*, %struct.symbol** %8, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TERMINAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %90
  %104 = load %struct.config*, %struct.config** %4, align 8
  %105 = getelementptr inbounds %struct.config, %struct.config* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.symbol*, %struct.symbol** %8, align 8
  %108 = getelementptr inbounds %struct.symbol, %struct.symbol* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SetAdd(i32 %106, i32 %109)
  br label %162

111:                                              ; preds = %90
  %112 = load %struct.symbol*, %struct.symbol** %8, align 8
  %113 = getelementptr inbounds %struct.symbol, %struct.symbol* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MULTITERMINAL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %138, %117
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.symbol*, %struct.symbol** %8, align 8
  %121 = getelementptr inbounds %struct.symbol, %struct.symbol* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %118
  %125 = load %struct.config*, %struct.config** %4, align 8
  %126 = getelementptr inbounds %struct.config, %struct.config* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.symbol*, %struct.symbol** %8, align 8
  %129 = getelementptr inbounds %struct.symbol, %struct.symbol* %128, i32 0, i32 4
  %130 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %130, i64 %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @SetAdd(i32 %127, i32 %136)
  br label %138

138:                                              ; preds = %124
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %118

141:                                              ; preds = %118
  br label %162

142:                                              ; preds = %111
  %143 = load %struct.config*, %struct.config** %4, align 8
  %144 = getelementptr inbounds %struct.config, %struct.config* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.symbol*, %struct.symbol** %8, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @SetUnion(i32 %145, i32 %148)
  %150 = load %struct.symbol*, %struct.symbol** %8, align 8
  %151 = getelementptr inbounds %struct.symbol, %struct.symbol* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LEMON_FALSE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %162

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %84

162:                                              ; preds = %155, %141, %103, %84
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.rule*, %struct.rule** %5, align 8
  %165 = getelementptr inbounds %struct.rule, %struct.rule* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.config*, %struct.config** %3, align 8
  %170 = getelementptr inbounds %struct.config, %struct.config* %169, i32 0, i32 1
  %171 = load %struct.config*, %struct.config** %4, align 8
  %172 = call i32 @Plink_add(i32* %170, %struct.config* %171)
  br label %173

173:                                              ; preds = %168, %162
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.rule*, %struct.rule** %6, align 8
  %176 = getelementptr inbounds %struct.rule, %struct.rule* %175, i32 0, i32 2
  %177 = load %struct.rule*, %struct.rule** %176, align 8
  store %struct.rule* %177, %struct.rule** %6, align 8
  br label %76

178:                                              ; preds = %76
  br label %179

179:                                              ; preds = %178, %33
  br label %180

180:                                              ; preds = %179, %32
  %181 = load %struct.config*, %struct.config** %3, align 8
  %182 = getelementptr inbounds %struct.config, %struct.config* %181, i32 0, i32 4
  %183 = load %struct.config*, %struct.config** %182, align 8
  store %struct.config* %183, %struct.config** %3, align 8
  br label %17

184:                                              ; preds = %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ErrorMsg(i32, i32, i8*, i32) #1

declare dso_local %struct.config* @Configlist_add(%struct.rule*, i32) #1

declare dso_local i32 @SetAdd(i32, i32) #1

declare dso_local i32 @SetUnion(i32, i32) #1

declare dso_local i32 @Plink_add(i32*, %struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
