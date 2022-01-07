; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfdump.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@nil = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"elfopen %s: %r\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"dwarfopen: %r\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dwarfenumall: %r\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"compileunit %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" 0x%lux-0x%lux\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" @ %.*H\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" @ 0x%lux\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" ranges@0x%lux\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"\09could not find source: %r\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\09%s/%s:%lud mtime=%lud length=%lud\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"\09%s/%s/%s:%lud mtime=%lud length=%lud\0A\00", align 1
@encodefmt = common dso_local global i32 0, align 4
@exprfmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @peopen(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** @nil, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @sysfatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @dwarfopen(i8* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** @nil, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @sysfatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @dwarfenum(i8* %39, %struct.TYPE_12__* %8)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @sysfatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %167, %44
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @dwarfnextsym(i8* %46, %struct.TYPE_12__* %8)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %168

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %167 [
    i32 132, label %53
    i32 129, label %58
    i32 128, label %59
    i32 131, label %60
    i32 130, label %61
  ]

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %167

58:                                               ; preds = %49
  store i32 116, i32* %5, align 4
  br label %68

59:                                               ; preds = %49
  store i32 100, i32* %5, align 4
  br label %68

60:                                               ; preds = %49
  store i32 99, i32* %5, align 4
  br label %68

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %167

67:                                               ; preds = %61
  store i32 112, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %60, %59, %58
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87, %76
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  switch i32 %99, label %118 [
    i32 134, label %100
    i32 133, label %112
  ]

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32 %110)
  br label %118

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %95, %112, %100
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %118
  %130 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %166

136:                                              ; preds = %129
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dwarfpctoline(i8* %137, i32 %140, i8** %9, i8** %10, i8** %11, i32* %12, i32* %13, i32* %14)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %165

145:                                              ; preds = %136
  %146 = load i8*, i8** %10, align 8
  %147 = load i8*, i8** @nil, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %150, i8* %151, i32 %152, i32 %153, i32 %154)
  br label %164

156:                                              ; preds = %145
  %157 = load i8*, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %157, i8* %158, i8* %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %156, %149
  br label %165

165:                                              ; preds = %164, %143
  br label %166

166:                                              ; preds = %165, %129
  br label %167

167:                                              ; preds = %49, %166, %66, %53
  br label %45

168:                                              ; preds = %45
  %169 = call i32 @exits(i32 0)
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i8* @peopen(i8*) #1

declare dso_local i32 @sysfatal(i8*, ...) #1

declare dso_local i8* @dwarfopen(i8*) #1

declare dso_local i64 @dwarfenum(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @dwarfnextsym(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i32 @dwarfpctoline(i8*, i32, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @exits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
