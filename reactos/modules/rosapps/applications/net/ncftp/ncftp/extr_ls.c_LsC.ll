; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_ls.c_LsC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__**, i64 }
%struct.TYPE_5__ = type { i8*, i8, i64 }

@gScreenColumns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*)* @LsC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LsC(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [400 x i8], align 16
  %8 = alloca [400 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__**, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %23 = load i32, i32* @gScreenColumns, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* %22, align 4
  %25 = icmp sgt i32 %24, 400
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 400, i32* %22, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %22, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %33, 2
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %29, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %22, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = srem i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %41
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %67, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 400
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 %65
  store i8 32, i8* %66, align 1
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %60

70:                                               ; preds = %60
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %72, align 8
  store %struct.TYPE_5__** %73, %struct.TYPE_5__*** %17, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %176, %70
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %179

78:                                               ; preds = %74
  %79 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %80 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %81 = call i32 @memcpy(i8* %79, i8* %80, i32 400)
  store i32 0, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %146, %78
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %155

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %146

92:                                               ; preds = %87
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %17, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %18, align 8
  %98 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8* %101, i8** %19, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %102, i64 %107
  store i8* %108, i8** %21, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %20, align 8
  br label %112

112:                                              ; preds = %116, %92
  %113 = load i8*, i8** %19, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = icmp ult i8* %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i8*, i8** %20, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %20, align 8
  %119 = load i8, i8* %117, align 1
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %19, align 8
  store i8 %119, i8* %120, align 1
  br label %112

122:                                              ; preds = %112
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i8, i8* %127, align 8
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 108
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i8*, i8** %19, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %19, align 8
  store i8 64, i8* %132, align 1
  br label %144

134:                                              ; preds = %125
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i8, i8* %136, align 8
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 100
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i8*, i8** %19, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %19, align 8
  store i8 47, i8* %141, align 1
  br label %143

143:                                              ; preds = %140, %134
  br label %144

144:                                              ; preds = %143, %131
  br label %145

145:                                              ; preds = %144, %122
  br label %146

146:                                              ; preds = %145, %91
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %14, align 4
  br label %83

155:                                              ; preds = %83
  %156 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %157 = getelementptr inbounds i8, i8* %156, i64 400
  store i8* %157, i8** %19, align 8
  br label %158

158:                                              ; preds = %164, %155
  %159 = load i8*, i8** %19, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 -1
  store i8* %160, i8** %19, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 32
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %158

165:                                              ; preds = %158
  %166 = load i8*, i8** %19, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %19, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %19, align 8
  store i8 10, i8* %168, align 1
  %170 = load i8*, i8** %19, align 8
  store i8 0, i8* %170, align 1
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %173 = call i32 @fprintf(i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %172)
  %174 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %175 = call i32 @Trace(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %74

179:                                              ; preds = %74
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @Trace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
