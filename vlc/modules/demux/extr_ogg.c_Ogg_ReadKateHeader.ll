; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadKateHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ReadKateHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__, i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @Ogg_ReadKateHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Ogg_ReadKateHeader(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @oggpack_readinit(i32* %6, i32 %15, i32 %18)
  %20 = call i32 @oggpack_adv(i32* %6, i32 88)
  %21 = call i8* @oggpack_read(i32* %6, i32 8)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = call i32 @oggpack_adv(i32* %6, i32 24)
  %27 = call i8* @oggpack_read(i32* %6, i32 8)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = call i32 @oggpack_adv(i32* %6, i32 64)
  %31 = call i8* @oggpack_read(i32* %6, i32 32)
  store i8* %31, i8** %7, align 8
  %32 = call i8* @oggpack_read(i32* %6, i32 32)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @__MAX(i8* %33, i32 1)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %152

41:                                               ; preds = %37
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @date_Init(i32* %43, i8* %44, i8* %45)
  %47 = call i8* @malloc(i32 16)
  %48 = bitcast i8* %47 to i8**
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i8** %48, i8*** %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = call i8* @oggpack_read(i32* %6, i32 8)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %62, i8** %69, align 8
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 15
  store i8* null, i8** %78, align 8
  br label %89

79:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %85, %79
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = call i8* @oggpack_read(i32* %6, i32 8)
  br label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %80

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %73
  %90 = call i8* @malloc(i32 16)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %141

99:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = call i8* @oggpack_read(i32* %6, i32 8)
  %105 = ptrtoint i8* %104 to i8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 %105, i8* %112, align 1
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 15
  store i8 0, i8* %121, align 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @FindKateCategoryName(i8* %125)
  %127 = call i8* @strdup(i32 %126)
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %116
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %10, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  br label %140

140:                                              ; preds = %130, %116
  br label %151

141:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %147, %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 16
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = call i8* @oggpack_read(i32* %6, i32 8)
  br label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %142

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %140
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %40
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @oggpack_readinit(i32*, i32, i32) #1

declare dso_local i32 @oggpack_adv(i32*, i32) #1

declare dso_local i8* @oggpack_read(i32*, i32) #1

declare dso_local i8* @__MAX(i8*, i32) #1

declare dso_local i32 @date_Init(i32*, i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @FindKateCategoryName(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
