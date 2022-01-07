; ModuleID = '/home/carl/AnghaBench/tmux/extr_layout-custom.c_layout_construct.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_layout-custom.c_layout_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layout_cell = type { i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"%ux%u,%u,%u\00", align 1
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.layout_cell* (%struct.layout_cell*, i8**)* @layout_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.layout_cell* @layout_construct(%struct.layout_cell* %0, i8** %1) #0 {
  %3 = alloca %struct.layout_cell*, align 8
  %4 = alloca %struct.layout_cell*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.layout_cell*, align 8
  %7 = alloca %struct.layout_cell*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.layout_cell* %0, %struct.layout_cell** %4, align 8
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i64 @isdigit(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %8, i8** %9, i8** %10, i8** %11)
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i64 @isdigit(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  br label %27

38:                                               ; preds = %27
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 120
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

45:                                               ; preds = %38
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  br label %49

49:                                               ; preds = %56, %45
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i64 @isdigit(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %57, align 8
  br label %49

60:                                               ; preds = %49
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 44
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

67:                                               ; preds = %60
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  br label %71

71:                                               ; preds = %78, %67
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = call i64 @isdigit(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  br label %71

82:                                               ; preds = %71
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 44
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

89:                                               ; preds = %82
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %90, align 8
  br label %93

93:                                               ; preds = %100, %89
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = call i64 @isdigit(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  br label %93

104:                                              ; preds = %93
  %105 = load i8**, i8*** %5, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 44
  br i1 %109, label %110, label %137

110:                                              ; preds = %104
  %111 = load i8**, i8*** %5, align 8
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %12, align 8
  %113 = load i8**, i8*** %5, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %113, align 8
  br label %116

116:                                              ; preds = %123, %110
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = call i64 @isdigit(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %124, align 8
  br label %116

127:                                              ; preds = %116
  %128 = load i8**, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 120
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i8*, i8** %12, align 8
  %135 = load i8**, i8*** %5, align 8
  store i8* %134, i8** %135, align 8
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %104
  %138 = load %struct.layout_cell*, %struct.layout_cell** %4, align 8
  %139 = call %struct.layout_cell* @layout_create_cell(%struct.layout_cell* %138)
  store %struct.layout_cell* %139, %struct.layout_cell** %6, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %142 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %145 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %148 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %151 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load i8**, i8*** %5, align 8
  %153 = load i8*, i8** %152, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  switch i32 %155, label %164 [
    i32 44, label %156
    i32 125, label %156
    i32 93, label %156
    i32 0, label %156
    i32 123, label %158
    i32 91, label %161
  ]

156:                                              ; preds = %137, %137, %137, %137
  %157 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  store %struct.layout_cell* %157, %struct.layout_cell** %3, align 8
  br label %217

158:                                              ; preds = %137
  %159 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %160 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %159, i32 0, i32 0
  store i32 129, i32* %160, align 8
  br label %165

161:                                              ; preds = %137
  %162 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %163 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %162, i32 0, i32 0
  store i32 128, i32* %163, align 8
  br label %165

164:                                              ; preds = %137
  br label %214

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %182, %165
  %167 = load i8**, i8*** %5, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %167, align 8
  %170 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %171 = load i8**, i8*** %5, align 8
  %172 = call %struct.layout_cell* @layout_construct(%struct.layout_cell* %170, i8** %171)
  store %struct.layout_cell* %172, %struct.layout_cell** %7, align 8
  %173 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %174 = icmp eq %struct.layout_cell* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %214

176:                                              ; preds = %166
  %177 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %178 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %177, i32 0, i32 1
  %179 = load %struct.layout_cell*, %struct.layout_cell** %7, align 8
  %180 = load i32, i32* @entry, align 4
  %181 = call i32 @TAILQ_INSERT_TAIL(i32* %178, %struct.layout_cell* %179, i32 %180)
  br label %182

182:                                              ; preds = %176
  %183 = load i8**, i8*** %5, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 44
  br i1 %187, label %166, label %188

188:                                              ; preds = %182
  %189 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %190 = getelementptr inbounds %struct.layout_cell, %struct.layout_cell* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  switch i32 %191, label %208 [
    i32 129, label %192
    i32 128, label %200
  ]

192:                                              ; preds = %188
  %193 = load i8**, i8*** %5, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 125
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %214

199:                                              ; preds = %192
  br label %209

200:                                              ; preds = %188
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 93
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %214

207:                                              ; preds = %200
  br label %209

208:                                              ; preds = %188
  br label %214

209:                                              ; preds = %207, %199
  %210 = load i8**, i8*** %5, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %210, align 8
  %213 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  store %struct.layout_cell* %213, %struct.layout_cell** %3, align 8
  br label %217

214:                                              ; preds = %208, %206, %198, %175, %164
  %215 = load %struct.layout_cell*, %struct.layout_cell** %6, align 8
  %216 = call i32 @layout_free_cell(%struct.layout_cell* %215)
  store %struct.layout_cell* null, %struct.layout_cell** %3, align 8
  br label %217

217:                                              ; preds = %214, %209, %156, %88, %66, %44, %25, %19
  %218 = load %struct.layout_cell*, %struct.layout_cell** %3, align 8
  ret %struct.layout_cell* %218
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i8**) #1

declare dso_local %struct.layout_cell* @layout_create_cell(%struct.layout_cell*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.layout_cell*, i32) #1

declare dso_local i32 @layout_free_cell(%struct.layout_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
