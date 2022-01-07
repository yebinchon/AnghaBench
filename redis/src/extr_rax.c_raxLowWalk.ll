; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxLowWalk.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxLowWalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i8*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Lookup current node\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Lookup stop node is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__**, %struct.TYPE_12__***, i32*, i32*)* @raxLowWalk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raxLowWalk(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_12__** %3, %struct.TYPE_12__*** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_12__***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_12__** %3, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_12__*** %4, %struct.TYPE_12__**** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %15, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store %struct.TYPE_12__** %25, %struct.TYPE_12__*** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %26

26:                                               ; preds = %136, %7
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ false, %26 ], [ %34, %31 ]
  br i1 %36, label %37, label %144

37:                                               ; preds = %35
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %39 = call i32 @debugnode(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %19, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %37
  store i64 0, i64* %18, align 8
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i64, i64* %18, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i1 [ false, %48 ], [ %57, %54 ]
  br i1 %59, label %60, label %79

60:                                               ; preds = %58
  %61 = load i8*, i8** %19, align 8
  %62 = load i64, i64* %18, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %65, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %79

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %18, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %17, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %17, align 8
  br label %48

79:                                               ; preds = %72, %58
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %144

86:                                               ; preds = %79
  br label %121

87:                                               ; preds = %37
  store i64 0, i64* %18, align 8
  br label %88

88:                                               ; preds = %108, %87
  %89 = load i64, i64* %18, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %89, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %88
  %95 = load i8*, i8** %19, align 8
  %96 = load i64, i64* %18, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %111

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %18, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %18, align 8
  br label %88

111:                                              ; preds = %106, %88
  %112 = load i64, i64* %18, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %144

118:                                              ; preds = %111
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %17, align 8
  br label %121

121:                                              ; preds = %118, %86
  %122 = load i32*, i32** %14, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32*, i32** %14, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %127 = call i32 @raxStackPush(i32* %125, %struct.TYPE_12__* %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %130 = call %struct.TYPE_12__** @raxNodeFirstChildPtr(%struct.TYPE_12__* %129)
  store %struct.TYPE_12__** %130, %struct.TYPE_12__*** %20, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i64 0, i64* %18, align 8
  br label %136

136:                                              ; preds = %135, %128
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %138 = load i64, i64* %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i64 %138
  %140 = call i32 @memcpy(%struct.TYPE_12__** %15, %struct.TYPE_12__** %139, i32 8)
  %141 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %142 = load i64, i64* %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %141, i64 %142
  store %struct.TYPE_12__** %143, %struct.TYPE_12__*** %16, align 8
  store i64 0, i64* %18, align 8
  br label %26

144:                                              ; preds = %117, %85, %35
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %146 = call i32 @debugnode(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %145)
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %148 = icmp ne %struct.TYPE_12__** %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %151 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_12__* %150, %struct.TYPE_12__** %151, align 8
  br label %152

152:                                              ; preds = %149, %144
  %153 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %12, align 8
  %154 = icmp ne %struct.TYPE_12__*** %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %157 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %12, align 8
  store %struct.TYPE_12__** %156, %struct.TYPE_12__*** %157, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32*, i32** %13, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i64, i64* %18, align 8
  %168 = trunc i64 %167 to i32
  %169 = load i32*, i32** %13, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %166, %161, %158
  %171 = load i64, i64* %17, align 8
  ret i64 %171
}

declare dso_local i32 @debugnode(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @raxStackPush(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__** @raxNodeFirstChildPtr(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__**, %struct.TYPE_12__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
