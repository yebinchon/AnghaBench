; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_us_compare.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_us_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@us_populated = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"smbentity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @us_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us_compare(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %156, %3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %160

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %24, align 4
  store i8* null, i8** %25, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %26, align 8
  %55 = load i32, i32* %24, align 4
  switch i32 %55, label %138 [
    i32 129, label %56
    i32 131, label %73
    i32 128, label %112
    i32 130, label %112
  ]

56:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %25, align 8
  %59 = call i32 @nvlist_lookup_uint32(i32* %57, i8* %58, i32* %20)
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %25, align 8
  %62 = call i32 @nvlist_lookup_uint32(i32* %60, i8* %61, i32* %21)
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp slt i32 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 -1
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %66, %56
  br label %139

73:                                               ; preds = %48
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %106, %76
  %78 = load i32*, i32** %13, align 8
  %79 = load i8*, i8** %25, align 8
  %80 = call i32 @nvlist_lookup_uint64(i32* %78, i8* %79, i32* %22)
  %81 = load i32*, i32** %14, align 8
  %82 = load i8*, i8** %25, align 8
  %83 = call i32 @nvlist_lookup_uint64(i32* %81, i8* %82, i32* %23)
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %22, align 4
  %90 = icmp slt i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 -1
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %87, %77
  br label %111

94:                                               ; preds = %73
  %95 = load i32*, i32** %13, align 8
  %96 = load i8*, i8** %25, align 8
  %97 = call i32 @nvlist_lookup_string(i32* %95, i8* %96, i8** %18)
  %98 = load i32, i32* @ENOENT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load i32*, i32** %14, align 8
  %102 = load i8*, i8** %25, align 8
  %103 = call i32 @nvlist_lookup_string(i32* %101, i8* %102, i8** %19)
  %104 = load i32, i32* @ENOENT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %94
  br label %77

107:                                              ; preds = %100
  %108 = load i8*, i8** %18, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = call i32 @strcmp(i8* %108, i8* %109)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %107, %93
  br label %139

112:                                              ; preds = %48, %48
  %113 = load i32, i32* @us_populated, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %139

116:                                              ; preds = %112
  %117 = load i32, i32* %24, align 4
  %118 = icmp eq i32 %117, 128
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %25, align 8
  br label %121

120:                                              ; preds = %116
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %25, align 8
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32*, i32** %13, align 8
  %123 = load i8*, i8** %25, align 8
  %124 = call i32 @nvlist_lookup_uint64(i32* %122, i8* %123, i32* %22)
  %125 = load i32*, i32** %14, align 8
  %126 = load i8*, i8** %25, align 8
  %127 = call i32 @nvlist_lookup_uint64(i32* %125, i8* %126, i32* %23)
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %132, %133
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 -1
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %131, %121
  br label %139

138:                                              ; preds = %48
  br label %139

139:                                              ; preds = %138, %137, %115, %111, %72
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i32, i32* %15, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i64, i64* %26, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 -1
  store i32 %149, i32* %4, align 4
  br label %179

150:                                              ; preds = %142
  %151 = load i64, i64* %26, align 8
  %152 = icmp ne i64 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 -1, i32 1
  store i32 %154, i32* %4, align 4
  br label %179

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  store %struct.TYPE_4__* %159, %struct.TYPE_4__** %11, align 8
  br label %45

160:                                              ; preds = %45
  %161 = load i32*, i32** %13, align 8
  %162 = call i64 @nvlist_lookup_boolean_value(i32* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64* %16)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32*, i32** %14, align 8
  %166 = call i64 @nvlist_lookup_boolean_value(i32* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64* %17)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %17, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %17, align 8
  %175 = icmp slt i64 %173, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 -1, i32 1
  store i32 %177, i32* %4, align 4
  br label %179

178:                                              ; preds = %168, %164, %160
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %172, %150, %145
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @nvlist_lookup_uint32(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @nvlist_lookup_boolean_value(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
