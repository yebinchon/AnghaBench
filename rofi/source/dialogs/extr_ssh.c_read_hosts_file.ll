; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_read_hosts_file.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_read_hosts_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"/etc/hosts\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to close hosts file: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_6__*, i32*)* @read_hosts_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_hosts_file(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %171

17:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %155, %17
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @getline(i8** %6, i64* %7, i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %156

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %153, %22
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %11, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %49, label %33

33:                                               ; preds = %24
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 35
  br i1 %48, label %49, label %134

49:                                               ; preds = %45, %41, %37, %33, %24
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %123

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %122

64:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @g_ascii_strcasecmp(i8* %71, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %65

85:                                               ; preds = %80, %65
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %121, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, 2
  %93 = zext i32 %92 to i64
  %94 = mul i64 %93, 16
  %95 = trunc i64 %94 to i32
  %96 = call %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__* %89, i32 %95)
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %3, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32* @g_strdup(i8* %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32* %98, i32** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %88, %85
  br label %122

122:                                              ; preds = %121, %59
  br label %123

123:                                              ; preds = %122, %49
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8* %128, i8** %10, align 8
  %129 = load i8, i8* %11, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 35
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %155

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %45
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 35
  br label %153

153:                                              ; preds = %145, %137
  %154 = phi i1 [ false, %137 ], [ %152, %145 ]
  br i1 %154, label %24, label %155

155:                                              ; preds = %153, %132
  br label %18

156:                                              ; preds = %18
  %157 = load i8*, i8** %6, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @free(i8* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32*, i32** %5, align 8
  %164 = call i64 @fclose(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* @errno, align 4
  %168 = call i32 @g_strerror(i32 %167)
  %169 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %166, %162
  br label %171

171:                                              ; preds = %170, %2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %172
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @g_ascii_strcasecmp(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @g_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
